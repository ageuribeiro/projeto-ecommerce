'''import library'''
from fastapi import FastAPI
from app.routes.index import router as root_router
from app.routes.produtos import router as produtos_router

app = FastAPI()
app.include_router(root_router)
app.include_router(produtos_router)
