FROM python:3.10.8

RUN apt-get update && apt-get install --yes pipenv
WORKDIR /usr/src/app

COPY ./ /app/
RUN pipenv install --deploy --ignore-pipfile
CMD pipenv run python main.py
