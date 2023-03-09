FROM ubuntu:latest

MAINTAINER HBP Collaboratory <platform@humanbrainproject.eu>

LABEL io.k8s.description="postresql backup container" \
      io.k8s.display-name="postresql backup"


RUN set -eux; \
	apt-get update; \
	apt-get -y install postgresql-client; \
	rm -rf /var/lib/apt/lists/*;


COPY bin/ /usr/local/bin/
RUN chmod a+x /usr/local/bin/autopgsqlbackup.sh

USER 1001

#ENTRYPOINT [ "/usr/local/bin/uid_entrypoint.sh" ]
#CMD [ "/bin/bash" ]
