#!/usr/bin/env bash

apt-get remove -y ca-certificates \
    lsb-release \
    wget
apt-get remove -y git \
    build-essential \
    cmake \
    postgresql-server-dev-14
