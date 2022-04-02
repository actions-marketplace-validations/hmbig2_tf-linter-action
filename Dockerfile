FROM hmbig2/tf-linter:latest

LABEL "com.github.actions.name"="tflint-action"
LABEL "com.github.actions.description"="Run tf-linter"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/chnsz/tflint-action"
LABEL "homepage"="https://github.com/chnsz/tflint-action"
LABEL "maintainer"="hua ming<hmbig2@163.com>"

ENV REVIEWDOG_VERSION=v0.14.0

RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh | sh -s -- -b /usr/local/bin/ ${REVIEWDOG_VERSION}

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
