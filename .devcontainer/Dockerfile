FROM emscripten/emsdk:latest

# Install additional tools needed for BusyBox build
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    wget \
    tar \
    git \
    sudo \
    python3 \
    file \
    dos2unix \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user with sudo privileges
RUN useradd -m -s /bin/bash devuser && \
    echo "devuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ENV PATH="/workspaces/emscripten-web-terminal/emscripten:$PATH"

# Switch to non-root user
USER devuser