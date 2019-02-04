FROM python:3-alpine

ADD requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt \
    && rm -f /tmp/requirements.txt \
    && mkdir /app

WORKDIR /app

ADD app.py app.py

CMD ["python","app.py"]
