FROM centos:7

ENV HOSTS=aarch64-unknown-linux-gnu

COPY ci/scripts/install-rust.sh /scripts/
RUN . /scripts/install-rust.sh

ENV PATH=$PATH:$HOME/.cargo/bin

RUN rustc --version