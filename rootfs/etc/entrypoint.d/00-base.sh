#!/usr/bin/env bash

declare -x PLUGIN_PATH


declare -x PLUGIN_BASE_WORKDIR
[[ -z "${PLUGIN_BASE_WORKDIR}" ]] && PLUGIN_BASE_WORKDIR="${DRONE_WORKSPACE}"

declare -x PLUGIN_CLI
[[ -z "${PLUGIN_CLI}" ]] && PLUGIN_CLI=" ${PLUGIN_PATH}"

true
