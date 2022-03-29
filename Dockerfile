# The default image has google chorme as the image
# The choice is based as chromium is difficult to install as it requires snap on Ubuntu

FROM gitpod/workspace-full-vnc

USER root

#RUN curl -LO https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
#    apt-get install -y ./google-chrome-stable_current_amd64.deb && \
#    rm google-chrome-stable_current_amd64.deb 

RUN apt-get update && \
    apt-get install -y chromium-browser

RUN apt-get install -y firefox

RUN rm -rf /var/lib/apt/list

#Firefox Source https://ftp.mozilla.org/pub/firefox/releases/latest/README.txt

# RUN wget --content-disposition "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US" && \
#     tar -xjf firefox-*.tar.bz2 && \
#     mv firefox /opt/firefox && \
#     ln -s /opt/firefox/firefox /usr/bin/firefox && \
#     ls /opt/firefox && \
#     firefox --version  && \
#     rm firefox-*.tar.bz2

USER gitpod

ENV CHROME_BIN=/usr/bin/chromium-browser

ENV BROWSER="Chrome_Without_Sandbox"