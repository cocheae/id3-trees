FROM python:3.6.8-alpine

WORKDIR /usr/src/app
RUN apk add --no-cache git && git clone https://github.com/tofti/python-id3-trees.git

WORKDIR /usr/src/app/python-id3-trees

ENTRYPOINT [ "python", "id3.py" ]