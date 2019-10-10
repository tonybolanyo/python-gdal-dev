# Python GDAL Dev

A simple Python image with some extra dependencies to develop
awesome apps in Django using GDAL and with graphviz to generate
beautiful ERDs.

This is based on python:3.7.3-slim
(see https://hub.docker.com/_/python)

# How to use this image

Create a Dockerfile in your Python app project

```
FROM tonybolanyo/python-gdal-dev

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
```

You can then build and run the Docker image:

```
$ docker build -t my-python-app .
$ docker run -it --rm --name my-running-app my-python-app
```
