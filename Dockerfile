FROM python:3.7.13


WORKDIR /app

COPY ./ /app/
RUN pipenv install --deploy --ignore-pipfile
CMD pipenv run python main.py
