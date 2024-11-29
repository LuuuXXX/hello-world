From centos:7

ENV HOSTS=x86_64-unknown-linux-gnu

COPY ci/scripts/install-rust.sh /scripts/
RUN . /scripts/install-rust.sh
ENV PATH=$PATH:$HOME/.cargo/bin

RUN export

RUN cargo build --release --target=$HOSTS
