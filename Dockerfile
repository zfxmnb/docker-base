# Base image
ARG IMAGE=alpine/git:latest
FROM ${IMAGE}
# maintainer
ARG MAINTAINER="zfxmnb <fanx1949@gmail.com>"
LABEL maintainer=${MAINTAINER}
# volume
VOLUME /data
# build run
# RUN
# copy files
COPY startup.sh /startup.sh
# expose port/protocol
ARG PORT=8080
EXPOSE ${PORT}
# entry point
ENTRYPOINT ["/bin/sh"]
# default exec
CMD ["/startup.sh"]