FROM ubuntu:22.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Hugo
ENV HUGO_VERSION=0.134.1
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
    && dpkg -i hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
    && rm hugo_extended_${HUGO_VERSION}_linux-amd64.deb

# Verify installation
RUN hugo version

# Expose default Hugo port
EXPOSE 1313

# Set working directory
WORKDIR /site

# By default, serve site in debug
CMD ["hugo", "server", "-D", "--bind", "0.0.0.0"]
