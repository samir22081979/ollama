FROM ollama/ollama

# Automatically download Mistral-7B when the container starts
RUN ollama pull mistral
