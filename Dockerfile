# start with Ubuntu 18.04
FROM ubuntu:18.04
MAINTAINER Christian Becker <mail@christianbecker.name>

# install "tac_plus"
RUN apt-get update && apt-get install -y \
        tacacs+ \
    && rm -rf /var/lib/apt/lists/* \
    && echo "! installation is finished !"

# run tac_plus
CMD ["/usr/sbin/tac_plus", "-C", "/etc/tacacs+/tac_plus.conf", "-G"]
