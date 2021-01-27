FROM python:3

COPY config.ini ginlong-listen.py ginlong-mqtt.init requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash", "./ginlong-mqtt.init"]
