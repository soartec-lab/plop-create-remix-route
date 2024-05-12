ARG BASE_IMAGE=node:22-bullseye-slim

FROM $BASE_IMAGE

RUN apt-get update -qq && apt-get install -y \
    zip \
    git
CMD sh -c "/bin/bash"
