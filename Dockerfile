FROM python:3.10.8

WORKDIR /app

COPY . /app/

RUN pip3 install -r requirements.txt



RUN set -xe;

COPY . .


EXPOSE 8000/tcp
ENTRYPOINT [ "tini", "--" ]
CMD [ "python3", "/app/martor_demo/manage.py", "runserver", "0.0.0.0:8000" ]



























