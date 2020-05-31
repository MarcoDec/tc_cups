# https://github.com/olbat/dockerfiles/blob/master/cupsd/Dockerfile

FROM debian:testing

# Install Packages (basic tools, cups, basic drivers, HP drivers)
RUN apt-get update \
&& apt-get install -y \
  sudo \
  whois \
  cups \
  cups-client \
  cups-bsd \
  cups-filters \
  foomatic-db-compressed-ppds \
  printer-driver-all \
  openprinting-ppds \
  hpijs-ppds \
  hp-ppd \
  hplip \
  smbclient \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# Default shell
CMD ["/usr/sbin/cupsd", "-f"]
