# Use the desired base image
FROM python:3.8

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    git \
    build-essential

# Clone the CTFcli repository
RUN git clone https://github.com/ctfcli/ctfcli.git

# Set the working directory
WORKDIR /ctfcli

# Install CTFcli dependencies
RUN pip install -r requirements.txt

# Set the entrypoint command
ENTRYPOINT ["./ctfcli.py"]
