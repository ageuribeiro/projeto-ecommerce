# Imagem base oficial do Python
FROM python:3.

# Define o diretório de trabalho dentro do container
WORDIR /app

# Copia o código-fonte para dentro do container
COPY . /app

# Instala as depêndencias
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta que o Uvicorn vai usar
EXPOSE 8000

# Comando para iniciar o servidor FastAPI
CMD uvicorn main:app --reload
