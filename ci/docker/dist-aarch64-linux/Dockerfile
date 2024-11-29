FROM arm64v8/centos:7

ENV PATH=$PATH:$CARGO_HOME/bin

ENV HOSTS=aarch64-unknown-linux-gnu

RUN export

RUN cargo build --release --host $HOSTS --target $HOSTS
