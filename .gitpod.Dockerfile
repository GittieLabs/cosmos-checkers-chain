FROM --platform=linux gitpod/workspace-full

# Change your versions here
ENV IGNITE_VERSION=0.25.2

ENV ARCH=arm64

ENV PACKAGES curl gcc jq
RUN sudo apt-get update
RUN sudo apt-get install -y $PACKAGES


# Install Ignite
RUN sudo curl -L https://get.ignite.com/cli@v${IGNITE_VERSION} | bash -
RUN sudo mv ignite /usr/local/bin


EXPOSE 1317 3000 4500 5000 26657

WORKDIR /checkers
