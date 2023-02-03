# Build Stage
# First pull Golang image
FROM golang:1.19.5-alpine3.17 as build-env
 
# Set environment variable
ENV APP_NAME simple-http-server
ENV CMD_PATH main.go
ENV GOPATH /home
 
# Copy application data into image
ADD src $GOPATH/src/$APP_NAME
WORKDIR $GOPATH/src/$APP_NAME
 
# Budild application
RUN CGO_ENABLED=0 go build -v -o $APP_NAME $GOPATH/src/$APP_NAME/$CMD_PATH
 
# # Run Stage
# FROM alpine:3.17
 
# # Set environment variable
# ENV APP_NAME simple-http-server
 
# # Copy only required data into this image
# COPY --from=build-env /$APP_NAME .
 
# Expose application port
EXPOSE 8080
 
# Start app
CMD ./$APP_NAME