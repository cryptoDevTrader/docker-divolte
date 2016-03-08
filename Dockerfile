FROM java:8

WORKDIR /usr/local/

RUN wget https://github.com/divThis/divolte-collector/releases/download/divolte-collector-0.3.0.1-patched/divolte-collector-0.3.0.1-patched.tar.gz && \
    tar -xzvf divolte-collector-0.3.0.1-patched.tar.gz --strip-components=1 && \
    rm divolte-collector-0.3.0.1-patched.tar.gz

ADD conf/divolte-collector.conf /usr/local/conf/

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

EXPOSE 8290

ENTRYPOINT ["divolte-collector"]