'''Importando bibliotecas'''
from fastapi import APIRouter

router = APIRouter()

@router.get('/')

# Função para listar produtos
def read_root():
    '''retorno da função'''
    return{"message":"API FastAPI funcionando!"}
