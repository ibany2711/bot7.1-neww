FROM python:3.7.13


WORKDIR /app

COPY ./ /app/

CMD python main.py
