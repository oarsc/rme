FROM ubuntu:24.04

RUN export DEBIAN_FRONTEND=noninteractive \
	&& ln -fs /usr/share/zoneinfo/UTC /etc/localtime

RUN apt-get update && apt-get install -y tzdata build-essential cmake git
RUN dpkg-reconfigure --frontend noninteractive tzdata
RUN apt-get install -y libboost-system-dev libboost-thread-dev libglu1-mesa-dev \
  libwxgtk3.2-dev libarchive-dev freeglut3-dev libxmu-dev libxi-dev

VOLUME /rme
WORKDIR /rme

CMD ["./compile.sh"]
