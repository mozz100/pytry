FROM python:3.4.3-slim

RUN apt-get update && apt-get install -y \
		gcc \
        python3-dev build-essential \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

