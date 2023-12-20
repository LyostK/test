# Utilise une image de base Rust
FROM rust:latest

# Crée le répertoire de travail dans l'image
WORKDIR /usr/src/app

# Copie le fichier Cargo.toml et le fichier src/ dans l'image
COPY ./Cargo.toml ./Cargo.toml
COPY ./src ./src

ENV ROCKET_ADDRESS=0.0.0.0

# Construit le projet avec cargo build
RUN cargo build

# Expose le port sur lequel le serveur web écoute
EXPOSE 8080

# Démarre l'application quand le conteneur démarre
CMD ["cargo", "run"]

