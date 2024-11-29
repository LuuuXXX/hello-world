From centos:7

ENV HOSTS=x86_64-unknown-linux-gnu

COPY ci/scripts/install-rust.sh /scripts/
RUN . /scripts/install-rust.sh

RUN cargo build --release --host $HOSTS --target $HOSTS
