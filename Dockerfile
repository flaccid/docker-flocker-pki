FROM flaccid/flocker

RUN mkdir -p /etc/flocker /usr/local/bin

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT /usr/local/bin/entrypoint.sh

WORKDIR /etc/flocker
