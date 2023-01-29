FROM alpine:latest
# create app folder in image
RUN mkdir /app
# copy every thing from builder image source(/app/brokerApp) into dest(/app)
#COPY --from=builder /app/brokerApp /app
COPY listenerApp /app
#run app
CMD [ "/app/listenerApp" ]