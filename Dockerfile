FROM ubuntu:16.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install core dependencies for kernel compilation
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    bc \
    bison \
    flex \
    libncurses5-dev \
    libncursesw5-dev \
    libssl-dev \
    make \
    perl \
    python2.7 \
    python-is-python2 \
    wget \
    curl \
    ca-certificates \
    zip \
    unzip \
    cpio \
    && rm -rf /var/lib/apt-get/lists/*

# Set up working directory inside the container
WORKDIR /kernel
