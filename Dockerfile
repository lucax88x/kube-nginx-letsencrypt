FROM centos:7

RUN yum -y install yum-utils
RUN yum install -y epel-release
RUN yum install jq -y
RUN yum install -y certbot

RUN mkdir -p /etc/letsencrypt

CMD ["/entrypoint.sh"]

COPY secret-patch-template.json /
COPY deployment-patch-template.json /
COPY entrypoint.sh /
