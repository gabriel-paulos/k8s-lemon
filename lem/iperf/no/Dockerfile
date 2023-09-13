# Use an official Ubuntu base image
FROM ubuntu:latest

# Set environment variables
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# Install iperf3 and other essential packages
RUN apt-get update && \
    apt-get install -y \
    iperf3 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Default command to run when the container starts
CMD ["bash"]
