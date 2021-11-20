FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python3-pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

CMD [ "export FLASK_APP=main" ]
CMD [ "flask run --host=0.0.0.0 --port=80" ]