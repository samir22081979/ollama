FROM ollama/ollama

# Start the Ollama daemon in the background
RUN ollama serve & sleep 10 && ollama pull mistral

# Expose default Ollama port
EXPOSE 11434

CMD ["ollama", "serve"]
