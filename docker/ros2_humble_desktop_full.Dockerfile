From osrf/ros:humble-desktop-full

RUN apt update && \
    apt install -y cmake build-essential vim nano git clang-format-11 tmux

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London
RUN apt-get install -y python3-tk

# Turtlebot dependencies
RUN apt install -y ros-humble-gazebo-* ros-humble-cartographer ros-humble-cartographer-ros ros-humble-navigation2 ros-humble-nav2-bringup ros-humble-dynamixel-sdk ros-humble-turtlebot3-msgs ros-humble-turtlebot3* ros-humble-rmw-cyclonedds-cpp 

RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> /root/.bashrc
RUN echo "export ROS_DOMAIN_ID=30 #TURTLEBOT3" >> /root/.bashrc
RUN echo "export TURTLEBOT3_MODEL=waffle_pi" >> /root/.bashrc
RUN echo "export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp" >> /root/.bashrc
