FROM python:3.10-slim-buster
WORKDIR /app

RUN apt-get update -y && apt-get install git -y
COPY . .
RUN pip3 install -r requirements.txt

CMD python3 main.py
