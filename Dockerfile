# Base image
ARG IMAGE=alpine/git:latest
FROM ${IMAGE}
# maintainer
ARG MAINTAINER="zfxmnb <fanx1949@gmail.com>"
LABEL maintainer=${MAINTAINER}
# volume
VOLUME /data
# copy files
COPY startup.sh /startup.sh
COPY build.sh /build.sh
COPY sopt /sopt
# build run
RUN ["/bin/sh", "/build.sh"]
# expose port/protocol
ARG PORT=8080
EXPOSE ${PORT}
# entry point
ENTRYPOINT ["/bin/sh"]
# default exec
CMD ["/startup.sh"]