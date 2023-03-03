FROM python:3.10.8


WORKDIR /app

COPY ./ /app/

CMD python main.py
