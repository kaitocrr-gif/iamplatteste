FROM python:3.11-slim
WORKDIR /app

# Copia o código
COPY backend/ backend/
COPY frontend/ frontend/
COPY alembic/ alembic/
COPY alembic.ini backend/requirements.txt ./

# Instala dependências do backend
RUN pip install --no-cache-dir -r backend/requirements.txt

# Porta (Cloud Run injeta a var PORT)
ENV PORT=8080
EXPOSE 8080

# Inicia a API FastAPI
CMD ["uvicorn","backend.main:app","--host","0.0.0.0","--port","${PORT}"]
