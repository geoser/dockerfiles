FROM debian:stretch-slim AS converter

RUN apt-get update && apt-get install -y dos2unix

COPY cronentrypoint.sh /cronentrypoint.sh

RUN dos2unix /cronentrypoint.sh


FROM nextcloud:latest

LABEL maintainer="Sergei Pavliukovich"

RUN apt-get update && apt-get install -y smbclient && apt-get install -y cron

COPY --from=converter cronentrypoint.sh /cronentrypoint.sh

ENTRYPOINT [ "/cronentrypoint.sh" ]

CMD ["apache2-foreground"]