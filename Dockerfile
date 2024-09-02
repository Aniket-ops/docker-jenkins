FROM debian:bullseye-slim

# Install required packages
RUN apt-get update && apt-get install -y \

    docker.io \
    git  

# Configure Docker daemon
RUN mkdir -p /etc/docker
RUN echo '{"storage-driver": "overlay2"}' > /etc/docker/daemon.json
