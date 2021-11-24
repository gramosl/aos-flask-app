# AOS Flask App
Simple Flask App

## Instructions
````shell
pip3 install -r requirements.txt
````

## Run local
```shell
python3 app.py
```

## Create docker image
```shell
docker build -t aos-flask-app:latest .
```

### Run it locally
```shell
docker run -p 8082:8082 aos-flask-app
```