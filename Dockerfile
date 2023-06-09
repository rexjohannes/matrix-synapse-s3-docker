FROM matrixdotorg/synapse:latest

LABEL org.opencontainers.image.source = "https://github.com/rexjohannes/matrix-synapse-s3-docker"

RUN apt -y update \
    && apt -y upgrade \
    && apt -y install g++ libffi-dev git python3-dev python3-pip \
    && pip3 install --upgrade pip \
    && pip3 install git+https://github.com/matrix-org/synapse-s3-storage-provider.git
