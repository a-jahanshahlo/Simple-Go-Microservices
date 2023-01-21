FROM alpine:latest
# create app folder in image
RUN mkdir /app
# copy every thing from builder image source(/app/brokerApp) into dest(/app)
#COPY --from=builder /app/brokerApp /app
COPY mailerApp /app
COPY templates /templates
#run app
CMD [ "/app/mailerApp" ]