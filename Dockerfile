FROM python:3.10.8

WORKDIR /app

COPY requeriments.txt /app/

RUN pip3 install -r requeriments.txt

COPY . /app

CMD python3






















