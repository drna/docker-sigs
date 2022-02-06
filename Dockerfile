FROM alpine:3.13.0

COPY sigs .

RUN apk add openjdk11 python3 && \
    wget https://github.com/hartwigmedical/hmftools/releases/download/sigs-v1.0/sigs_v1.0.jar && \
    mkdir /usr/local/share/sigs/ && \
    mv sigs_v1.0.jar /usr/local/share/sigs/ && \
    mv sigs /usr/local/share/sigs/ && \
    ln -s /usr/local/share/sigs/sigs /usr/local/bin/sigs