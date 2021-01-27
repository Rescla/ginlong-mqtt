FROM python:3

COPY ginlong-listen.py requirements.txt ./
COPY config.ini-default ./config.ini

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "ginlong-listen.py"]
