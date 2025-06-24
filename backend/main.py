'''Importando as bibliotecas'''
from fastapi import FastAPI, HTTPException
import pyodbc
import uuid

app = FastAPI()

# Função para criar a conexão com o banco de dados.


def get_db_connection():
    """Cria uma conexão com o banco de dados"""
    return pyodbc.connect(
        'DRIVER={ODBC Driver 17 for SQL Server};'
        'SERVER=LOQ15IRH8;'
        'DATABASE=ecommerce_db;'
        'UID=sa;PWD=sa'
        )

# Função para criar os esquemas e as tabelas


def create_schema_and_tables(schema_name, tipo_negocio):
    """Executa a conexão com o banco de dados"""
    conn = get_db_connection()
    cursor = conn.cursor()

    try:
        # Executando
        cursor.execute(f'CREATE SCHEMA {schema_name}')

        # Get a stored procedure para criar as tabelas padrão daquele tipo de negócio
        cursor.execute(
            f"EXEC CreateDefaultTablesForBusinessType '{schema_name}', '{tipo_negocio}'")
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(
            status_code=500, detail=f"Erro ao criar schema/tabelas: {str(e)}") from e
    finally:
        conn.close()

@app.get("/")
def read_root():
    '''Criar endpoint para testes'''
    return {"message":"Backend rodando com sucesso!"}

@app.post("/api/tenants/register")

# Função para criar endpoint de registro
def register_tenant(nome_empresa: str, tipo_negocio: str):

    ''' Gerar um schema_name único para evitar duplicidade (Exemplo: supermercado_joão_d7f1y)'''

    safe_name = nome_empresa.lower().replace(" ", "_")
    unique_id = str(uuid.uuid4())[:8]  # Pega apenas os primeiros 8 caracteres
    schema_name = f"{safe_name}_{unique_id}"

    # Salvar o tenant na tabela de controle
    conn = get_db_connection()
    cursor = conn.cursor()
    try:
        cursor.execute(
            "INSERT INTO Tenants (nome_empresa, tipo_negocio, schema_name) VALUES(?, ?, ?)",
            (nome_empresa, tipo_negocio, schema_name)
        )
        conn.commit()

        create_schema_and_tables(schema_name, tipo_negocio)

        return {"message": "Tenant cadastrado com sucesso", "schema": schema_name}

    except Exception as e:
        conn.rollback()
        raise HTTPException(
            status_code=500, detail=f"Erro ao registrar Tenant: {str(e)}") from e
    finally:
        conn.close()
