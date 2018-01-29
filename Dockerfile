FROM ubuntu:16.04
RUN apt-get update -y && \
    apt-get install -y git && \
    apt-get install -y curl &&\
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs  &&\
    npm install npm -g  &&\
    npm install -g hexo-cli &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /
ENV USER hwchiu
ENV EMAIL hwchiu@linkernetworks.com
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
