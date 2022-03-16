FROM python:3.7-alpine

RUN apk update && apk add gcc libc-dev make git libffi-dev openssl-dev python3-dev libxml2-dev libxslt-dev
RUN apk add py-pip
RUN pip install --upgrade pip
RUN pip install email-validator

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt --upgrade

CMD ["python3", "run.py"]