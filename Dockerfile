# Usar una imagen de Python como base
FROM python:3.9-slim-buster

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el archivo de script a /app
COPY main.py /app/

# Instalar las dependencias necesarias
# RUN pip install --no-cache-dir -r requirements.txt

# Establecer la entrada del contenedor
CMD [ "python", "./main.py" ]
