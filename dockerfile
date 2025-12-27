# Etapa 1: build
FROM rust:1.76 as builder

WORKDIR /app
COPY Cargo.toml .
COPY src ./src

RUN cargo build --release

# Etapa 2: runtime (imagen pequeña)
FROM debian:bookworm-slim

WORKDIR /app
COPY --from=builder /app/target/release/rust-ci-demo .

CMD ["./rust-ci-demo"]

