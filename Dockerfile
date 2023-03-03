FROM python:3.10
ADD requirements.txt
ADD main.py
ADD okteto-stack.yaml
RUN pip install -r requirements.txt
EXPOSE 8080
COPY . /app
CMD ["python3", "main.py"]
