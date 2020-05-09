FROM alpine:3.11

# https://github.com/upshift-docker/openldap/blob/master/Dockerfile
# https://github.com/gitphill/ldap-alpine/blob/master/Dockerfile
# https://github.com/danielguerra69/docker-openldap

# docker build -t capvor/openldap:0.1 .
# docker run --hostname myldap --name myldap -p 389:389 --net test-tier capvor/openldap:0.1

RUN apk --no-cache --update add openldap openldap-back-mdb openldap-clients && \
    mkdir /run/openldap && chown ldap:ldap /run/openldap


#CMD ["/usr/sbin/slapd", "-u", "ldap", "-g", "ldap", "-h", "ldaps:///", "-d", "1"]
CMD ["/usr/sbin/slapd", "-u", "ldap", "-g", "ldap", "-d", "1"]
