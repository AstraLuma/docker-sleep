FROM gcc AS build
WORKDIR /tmp

COPY sleep.c .
RUN gcc sleep.c -static -o sleep

FROM scratch
MAINTAINER Jan Nash <jnash@jnash.de>

COPY --from=build /tmp/sleep /
CMD ["/sleep"]
