FROM node:16

ARG USERNAME=node

RUN apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

RUN npm install -g \
    firebase-tools \
    create-nuxt-app \
    create-react-app

USER node

CMD ["/bin/bash"]
