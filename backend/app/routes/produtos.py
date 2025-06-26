'''Importando bibliotecas'''
from fastapi import APIRouter

router = APIRouter()

@router.get('/api/produtos')

# Função para listar produtos
def listar_produtos():
    '''retorno da função'''
    return[
        {"id":1, "nome":"Produto A", "preco":29.9},
        {"id":2, "nome":"Produto B", "preco":39.9}
    ]
