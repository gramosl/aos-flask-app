FROM python:3.8

RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8082

CMD flask run --host=0.0.0.0 --port=8082