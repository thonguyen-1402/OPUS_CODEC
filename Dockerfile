FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    pkg-config \
    libogg-dev \
    libflac-dev \
    libsndfile1-dev \
    libtool \
    autoconf \
    automake \
    git \
    wget \
    curl \
    ca-certificates

WORKDIR /app
#opus, opus_codec, opus_file,opus_enc are all copied to app
#app
    #opus_codec
        #RAW_PCM
COPY . /app
EXPOSE 8080
ENV LD_LIBRARY_PATH="/app/opus/build/lib:/app/libopusenc/.libs:/app/opusfile-0.11/lib:/app/libogg-1.3.5/lib"

CMD ["./opus_codec/build/encoder"]
