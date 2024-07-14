FROM python:3.8-slim-buster

USER root

ENV DB_USERNAME=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

WORKDIR /src

COPY ./analytics/requirements.txt requirements.txt

RUN apt update -y && apt install -y build-essential libpq-dev

RUN pip install -r requirements.txt

COPY ./analytics .

CMD python app.py
