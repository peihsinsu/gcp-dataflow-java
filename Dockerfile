From google/python

RUN apt-get update -y && \
    apt-get install python2.7 openjdk-7-jdk maven curl wget build-essential -y && \
    cd /opt && \
    wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-129.0.0-linux-x86_64.tar.gz && \
    tar -xzf google-cloud-sdk-129.0.0-linux-x86_64.tar.gz 

ENV PATH=/opt/google-cloud-sdk/bin:$PATH

    
