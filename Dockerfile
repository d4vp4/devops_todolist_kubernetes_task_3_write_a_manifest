FROM ubuntu:latest
LABEL authors="danylopovar"

ENTRYPOINT ["top", "-b"]