# Usar una imagen de Python como base
FROM python:3.9-slim-buster

# Establecer el directorio de trabajo en /app
WORKDIR /app

RUN apt-get -y update && apt-get -y upgrade \
        &&  apt-get -y install gcc \
        && apt-get -y install wget \
        && apt-get -y install libpq-dev \
        # cleaning up unused files
        && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
        && rm -rf /var/lib/apt/lists/*

# Copiar el archivo de script a /app
COPY main.py /app/

# Instalar las dependencias necesarias
# RUN pip install --no-cache-dir -r requirements.txt

RUN apt get install 

# Establecer la entrada del contenedor
CMD [ "python", "./main.py" ]
