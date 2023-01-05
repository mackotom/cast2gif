FROM liuchong/rustup:latest


RUN apt-get update && \
    apt-get install -y git unzip wget

RUN mkdir -p /usr/share/fonts
RUN wget https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip
RUN unzip JetBrainsMono-2.242.zip
RUN mv fonts/ttf/JetBrainsMono-*.ttf /usr/share/fonts/

RUN mkdir /app
WORKDIR /app

RUN git clone https://github.com/asciinema/agg.git

WORKDIR /app/agg

RUN cargo build -r

RUN cp /app/agg/target/x86_64-unknown-linux-musl/release/agg /usr/bin/agg

RUN mkdir /data
WORKDIR /data

VOLUME ["/data"]

ENTRYPOINT ["/usr/bin/agg"]

