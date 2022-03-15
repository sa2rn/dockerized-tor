FROM alpine as release
RUN apk add --no-cache \
  tor \
  && rm -rf /var/cache/apk/* /tmp/*
COPY ./docker-entrypoint /
EXPOSE 9050
EXPOSE 9051
ENTRYPOINT ["/docker-entrypoint"]
CMD ["tor"]
