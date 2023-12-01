#!/bin/bash
to_abs_path() {
    local RELATIVE_PATH=$(echo "`dirname $0`"/$@)
    echo $(realpath $RELATIVE_PATH)
}

MAIN_ABS_PATH=$(to_abs_path ../)
SCRIPT_FOLDER_ABS_PATH=$(to_abs_path ./)

xhost +
docker compose -f ${MAIN_ABS_PATH}/docker/ros2_desktop_full_docker_compose.yml up -d