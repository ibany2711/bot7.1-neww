FROM python:3.10

RUN apt-get update && apt-get install --yes pipenv
WORKDIR /app

COPY ./ /app/
RUN pipenv install --deploy --ignore-pipfile
CMD pipenv run python main.py
