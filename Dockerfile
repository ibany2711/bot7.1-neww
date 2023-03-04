FROM python:3.10.8
FROM alpine:3.16.0
WORKDIR /usr/src/app

RUN apt-get update && apt-get install requirements.txt --yes pipenv


COPY ./ /usr/src/app/





RUN set -xe;

COPY . .

RUN apk add --no-cache python3 py3-pip tini; \
    pip install --upgrade pip setuptools-scm; \
    python3 setup.py install; \
    python3 martor_demo/manage.py makemigrations; \
    python3 martor_demo/manage.py migrate; \
    addgroup -g 1000 appuser; \
    adduser -u 1000 -G appuser -D -h /app appuser; \
    chown -R appuser:appuser /app
USER appuser
EXPOSE 8000/tcp
ENTRYPOINT [ "tini", "--" ]
CMD [ "python3", "main.py", "/app/martor_demo/manage.py", "runserver", "0.0.0.0:8000" ]









