FROM python:3.10

WORKDIR /app

COPY . /app/

RUN pip install -r requirements.txt

CMD ["python", "main.py", "runserver", "0.0.0.0:3000"]

EXPOSE 3000




