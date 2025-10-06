FROM python:3.11-slim
WORKDIR /app

COPY backend/ backend/
COPY frontend/ frontend/
COPY alembic/ alembic/
COPY alembic.ini backend/requirements.txt ./
