FROM java:8

WORKDIR /usr/local/

RUN wget https://github.com/cbsmith/divolte-collector/releases/download/0.3.1/divolte-collector-0.3.1-SNAPSHOT.tar && \
    tar -xvf divolte-collector-0.3.1-SNAPSHOT.tar --strip-components=1 && \
    rm divolte-collector-0.3.1-SNAPSHOT.tar

ADD conf/divolte-collector.conf /usr/local/conf/

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

EXPOSE 8290

ENTRYPOINT ["divolte-collector"]
