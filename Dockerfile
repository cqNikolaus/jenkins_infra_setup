FROM python

RUN apt-get update && \
    apt-get install -y --no-install-recommends dnsutils openssl git && \
    rm -rf /var/lib/apt/lists/*
    
WORKDIR /code

COPY . /code

RUN pip install --no-cache-dir --upgrade -r requirements.txt

