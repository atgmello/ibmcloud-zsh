FROM ibmcom/ibm-cloud-developer-tools-amd64:latest

RUN apk add git wget
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)" -- \
    -a 'set -o vi' \
    -p git \
    -p ssh-agent \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    -p https://github.com/zdharma/fast-syntax-highlighting

ENTRYPOINT  ["zsh"]
