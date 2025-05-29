# Use an official Ubuntu base image
FROM ubuntu:24.04
# Assure non-interactive mode of installers
ENV DEBIAN_FRONTEND=noninteractive 
# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake
# Copy necessary files
COPY ./src /app/src
COPY ./CMakeLists.txt /app
# Build the application
WORKDIR /app/build
RUN cmake ..
RUN cmake --build .
# Run the application
CMD ["./CppDocker"]
