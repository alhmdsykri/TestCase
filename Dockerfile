# Stage 1: Build the application
FROM golang:1.17-alpine as builder

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module and Go sum files to enable caching of dependencies
COPY go.mod go.sum ./

# Download and install Go dependencies
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go application
RUN CGO_ENABLED=0 GOOS=linux go build -a -o olintes .

# Stage 2: Create the final container
FROM alpine:3.14

# Set a non-root user for the container
RUN adduser -D -g '' olintesuser
USER olintesuser

# Set the working directory inside the container
WORKDIR /app

# Copy the built binary from the builder stage
COPY --from=builder /app/olintes .

# Update the system and install security updates
RUN apk update && apk upgrade

# Install any additional runtime dependencies (if needed)

# Expose the application port (replace 8080 with your application port)
EXPOSE 8080

# Start the application
CMD ["./olintes"]
