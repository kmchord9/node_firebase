FROM node:14.18

ARG USERNAME=node

RUN apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

RUN npm install -g \
    firebase-tools \
    create-nuxt-app 

USER node
WORKDIR /work

EXPOSE 3000
ENV HOST 0.0.0.0

CMD ["/bin/bash"]
