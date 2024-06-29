FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    wget \
    tar \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.5.7/SRBMiner-Multi-2-5-7-Linux.tar.gz && \
    tar -xzf SRBMiner-Multi-2-5-7-Linux.tar.gz && \
    rm SRBMiner-Multi-2-5-7-Linux.tar.gz

WORKDIR /app/SRBMiner-Multi-2-5-7

COPY start.sh .

RUN chmod +x start.sh

EXPOSE 80

CMD ["./start.sh"]
