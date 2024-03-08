FROM rust:slim-buster

RUN apt update && \
    apt install -y pkg-config libssl-dev && \
    cargo install wikijs --features=cli

ENTRYPOINT /bin/sh
