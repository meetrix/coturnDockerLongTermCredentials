FROM debian:8.5
MAINTAINER Buddhika Jayawardhana <jay@meetrix.io>

RUN apt-get update && apt-get install -y coturn && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV TURN_PORT 3478
ENV TURN_PORT_START 10000
ENV TURN_PORT_END 20000
ENV TURN_SECRET mysecret
ENV TURN_SERVER_NAME coturn
ENV TURN_REALM north.gov

ADD starter.sh starter.sh
RUN chmod +x starter.sh

CMD ["./starter.sh"]
