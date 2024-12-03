FROM alpine:latest
ARG gitref=e386b1c18c39ed3c0a9a35b3d213703dc41a8cd4
RUN apk add --no-cache git g++ boost-dev && \
    git clone git@github.com:ucfcbb/Recomb-Mix.git build && \
    cd build && \
    git checkout $gitref && \
    apk del git && \
    cd src && \
    g++ -std=c++17 RecombMix.cpp -lboost_iostreams -o RecombMix -Os && \
    mv RecombMix /usr/local/bin/ && \
    cd && \
    rm -rf build

CMD ["RecombMix"]
