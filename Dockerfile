FROM python:3.6-alpine

RUN adduser -D binalyzer

WORKDIR /home/binalyzer

RUN pip3 install \
    requests \
    binalyzer-core==0.0.13a84 \
    binalyzer-data-provider==0.0.5a16 \
    binalyzer-template-provider==0.0.8a64 \
    binalyzer-cli==0.0.6a30 \
    binalyzer-rest==0.0.2a10 \
    binalyzer==0.0.10a136

USER binalyzer
EXPOSE 8000
CMD ["binalyzer", "rest"]
