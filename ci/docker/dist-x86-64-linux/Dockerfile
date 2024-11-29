From centos:7

ENV PATH=$PATH:$CARGO_HOME/bin

ENV HOSTS=x86_64-unknown-linux-gnu

RUN cargo build --release --host $HOSTS --target $HOSTS