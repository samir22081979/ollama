# Use official Ollama base image
FROM ollama/ollama

# Pull the Mistral model when the container starts (optional but nice)
CMD ollama pull mistral && ollama serve
