FROM registry.fedoraproject.org/fedora:27

ENV LANG C.UTF-8

RUN dnf -y update

RUN dnf -y install exim

EXPOSE 25 465 587

VOLUME /etc/exim /var/log/exim /var/spool/exim /var/spool/mail

ENTRYPOINT ["/usr/sbin/exim", "-bdf", "-q30m"]

# Local Variables:
# indent-tabs-mode: nil
# End:
