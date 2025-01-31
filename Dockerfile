FROM ubuntu:24.04

# Install wget
RUN apt-get update && apt-get install -y wget

# Install hugo
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.142.0/hugo_extended_0.142.0_linux-amd64.tar.gz
RUN tar -xzvf hugo_extended_0.142.0_linux-amd64.tar.gz
RUN cp hugo /usr/local/bin

# Set the working directory
WORKDIR /src

# Set the entrypoint
ENTRYPOINT ["hugo", "server", "--bind", "0.0.0.0", "-p", "1313", "-D"]
