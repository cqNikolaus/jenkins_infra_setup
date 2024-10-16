FROM python

RUN apt-get update && \
    apt-get install -y --no-install-recommends dnsutils openssl git && \
    rm -rf /var/lib/apt/lists/*
    
WORKDIR /code


RUN git clone --depth 1 https://github.com/cqNikolaus/jenkins_automation.git . && \
    cp jenkins_automation/requirements.txt /code/requirements.txt && \
    rm -rf jenkins_automation


RUN pip install --no-cache-dir --upgrade -r requirements.txt

