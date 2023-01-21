FROM alpine:latest
# create app folder in image
RUN mkdir /app

COPY authApp /app
#run app
CMD [ "/app/authApp" ]