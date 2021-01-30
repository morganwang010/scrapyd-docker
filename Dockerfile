FROM python:alpine

LABEL name="scrapyd"

RUN apk update && apk add libxslt-dev libxml2-dev gcc make musl-dev libffi-dev libressl-dev jpeg-dev zlib-dev libjpeg
RUN pip install scrapy scrapy-splash scrapyd pillow pymongo

WORKDIR /data/
COPY scrapyd.conf /etc/scrapyd/scrapyd.conf

CMD ["scrapyd"]
