FROM python:2

COPY ginlong-listen.py requirements.txt ./
COPY config.ini-default ./config.ini

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT python -u /ginlong-listen.py
