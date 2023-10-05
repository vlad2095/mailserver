FROM ghcr.io/docker-mailserver/docker-mailserver:latest

# Define environment variables
ENV OVERRIDE_HOSTNAME=infra.monk.io
ENV LOG_LEVEL=debug
ENV SSL_TYPE=letsencrypt
ENV ONE_DIR=1
ENV PERMIT_DOCKER=host
ENV ENABLE_SPAMASSASSIN=0
ENV ENABLE_CLAMAV=0
ENV ENABLE_OPENDKIM=0

# Define volumes
VOLUME /var/mail
VOLUME /var/mail-state
VOLUME /var/log/mail
VOLUME /tmp/docker-mailserver
VOLUME /etc/letsencrypt

# Expose ports
EXPOSE 25
EXPOSE 143
EXPOSE 465
EXPOSE 587
EXPOSE 993
