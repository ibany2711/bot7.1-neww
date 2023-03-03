FROM python:3.7.13

RUN apt-get install update && apt-get install --yes pipenv
WORKDIR /app

COPY ./ /app/
RUN pipenv install --deploy --ignore-pipfile
CMD pipenv run python main.py
