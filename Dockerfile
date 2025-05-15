# Imagen base de Python 3.12
FROM python:3.12-slim

# Crea directorio de trabajo
WORKDIR /app

# Copia primero el archivo de dependencias
COPY requirements.txt .

# Instala Flask
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo lo demás
COPY . .

# Expone el puerto 5000
EXPOSE 5000

# Ejecuta la app
CMD ["python", "app.py"]
