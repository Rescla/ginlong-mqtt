FROM python:3

COPY ginlong-listen.py ginlong-mqtt.init requirements.txt ./
COPY config.ini-default ./config.ini

RUN pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash", "./ginlong-mqtt.init"]
