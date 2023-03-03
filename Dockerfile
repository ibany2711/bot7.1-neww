FROM python:3.10

WORKDIR /app

COPY . /app/

RUN pip install -r requirements.txt

CMD ["python", "main.py", "runserver", "127.0.0.1:5000"]

EXPOSE 50




