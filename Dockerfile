FROM python:3.7.13

WORKDIR /app

COPY requeriments.txt /app/

RUN pip3 install -r requeriments.txt

COPY . /app



USER appuser
EXPOSE 8000/tcp
ENTRYPOINT [ "tini", "--" ]
CMD [ "python3", "main.py", "/app/martor_demo/manage.py", "runserver", "0.0.0.0:8000" ]






















