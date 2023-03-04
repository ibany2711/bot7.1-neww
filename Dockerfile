FROM python:3.10.8
FROM alpine:3.16.0



WORKDIR /app



RUN pip3 install -r requeriments.txt

COPY . /app

USER appuser
EXPOSE 8000/tcp
ENTRYPOINT [ "tini", "--" ]
CMD [ "python3", "main.py", "/app/martor_demo/manage.py", "runserver", "0.0.0.0:8000" ]






















