#FROM golang:1.19.5-alpine as builder
# run command to make new folder
#RUN mkdir /app
# copy every thing in root . to /app
#COPY . /app
# switch to /app directory
#WORKDIR /app
#run go compiler to build app with brokerApp name on output
#RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api
#run chmod with -x attribute to change folder in here brokerApp permission
#RUN chmod +x /app/brokerApp
#build tiny image from docker
FROM alpine:latest
# create app folder in image
RUN mkdir /app
# copy every thing from builder image source(/app/brokerApp) into dest(/app)
#COPY --from=builder /app/brokerApp /app
COPY loggerServiceApp /app
#run app
CMD [ "/app/loggerServiceApp" ]