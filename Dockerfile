# The default image has google chorme as the image
# The choice is based as chromium is difficult to install as it requires snap on Ubuntu

FROM gitpod/workspace-full-vnc

USER root

RUN apt update --fix-missing &&  \
    apt-get install -y firefox firefox-geckodriver libpci-dev

USER gitpod