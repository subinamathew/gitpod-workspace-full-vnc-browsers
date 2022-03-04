# The default image has google chorme as the image
# The choice is based as chromium is difficult to install as it requires snap on Ubuntu

FROM gitpod/workspace-full-vnc

USER root

RUN curl -LO https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y ./google-chrome-stable_current_amd64.deb && \
    rm google-chrome-stable_current_amd64.deb 

USER gitpod