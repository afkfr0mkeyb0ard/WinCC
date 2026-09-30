FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        gcc-mingw-w64-x86-64 \
        g++-mingw-w64-x86-64 \
        gcc-mingw-w64-i686 \
        g++-mingw-w64-i686 \
        mingw-w64 \
        make \
        cmake \
        ninja-build \
        pkg-config \
        ca-certificates \
        && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /src

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
