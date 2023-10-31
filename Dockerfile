# Use the official Golang image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code into the container
COPY . .

# Build the Go application
RUN go build -o fileserver

# Expose the port that your application will listen on
EXPOSE 8081

# Command to run the application
CMD ["./fileserver", "-p", "8081"]