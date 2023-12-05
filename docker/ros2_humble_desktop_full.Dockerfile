From osrf/ros:humble-desktop-full

RUN apt update && \
    apt install -y cmake build-essential vim nano git clang-format-11 tmux

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London
RUN apt-get install -y python3-tk

RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> /root/.bashrc
