FROM python:3.6-alpine

RUN adduser -D binalyzer

WORKDIR /home/binalyzer

RUN pip3 install binalyzer requests

USER binalyzer
EXPOSE 8000
CMD ["binalyzer", "rest"]
