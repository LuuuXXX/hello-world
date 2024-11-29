FROM centos:7

WORKDIR /checkout/obj

ENV HOSTS=aarch64-unknown-linux-gnu

COPY ci/scripts/install-rust.sh /scripts/
RUN . /scripts/install-rust.sh
ENV PATH=$PATH:/root/.cargo/bin

RUN export && ls