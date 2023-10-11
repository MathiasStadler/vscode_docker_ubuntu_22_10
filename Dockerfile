#FROM HERE

FROM ubuntu:22.04
VOLUME /tmp
RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker

#install rust
RUN DEBIAN_FRONTEND=noninteractive apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y rustc
RUN DEBIAN_FRONTEND=noninteractive apt upgrade
RUN DEBIAN_FRONTEND=noninteractive apt install firefox
