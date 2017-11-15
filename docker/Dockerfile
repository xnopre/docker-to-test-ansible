FROM debian

MAINTAINER Xavier NOPRE <xnopre@gmail.com>

# Mise à jour APT et installation des packages nécessaires
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y openssl openssh-server sudo python3-pip

RUN mkdir -p /var/run/sshd
RUN ln -s /usr/bin/python3 /usr/bin/python

# Création d'un user "ansible" autorisé à faire "sudo"
RUN useradd -ms /bin/bash ansible
RUN usermod --password $(echo ansible1234 | openssl passwd -1 -stdin) ansible
RUN adduser ansible sudo
RUN echo "ansible ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && chmod 0440 /etc/sudoers.d/user

# On expose le port 22 pour SSH
EXPOSE 22

# On lance le daemon SSH
CMD ["/usr/sbin/sshd", "-D"]