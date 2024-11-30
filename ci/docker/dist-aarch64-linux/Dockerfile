FROM centos:7

ENV TARGET=aarch64-unknown-linux-gnu

COPY ci/scripts/install-rust.sh /scripts/
RUN . /scripts/install-rust.sh
ENV PATH=$PATH:/root/.cargo/bin

RUN rustup target add aarch64-unknown-linux-gnu

CMD cargo build --release --target=$TARGET
