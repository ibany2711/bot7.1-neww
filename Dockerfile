FROM python:3.10.8

WORKDIR /app



COPY . /app/
RUN pip install -r requirements.txt



EXPOSE 8000/tcp
ENTRYPOINT [ "tini", "--" ]
CMD [ "python3", "main.py", "runserver", "0.0.0.0:8000" ]
