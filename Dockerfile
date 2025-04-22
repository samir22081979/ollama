FROM ubuntu:22.04

# Install system packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    gnupg \
    ca-certificates \
    unzip \
    sudo \
    git

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Preload model (you can also load it at runtime if needed)
RUN /root/.ollama/bin/ollama serve & sleep 5 && /root/.ollama/bin/ollama pull mistral

# Expose the Ollama API port
EXPOSE 11434

# Start Ollama server
CMD ["/root/.ollama/bin/ollama", "serve"]
