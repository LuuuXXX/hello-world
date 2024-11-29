FROM centos:7

ENV HOSTS=aarch64-unknown-linux-gnu

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH=$PATH:/root/.cargo/bin

RUN export