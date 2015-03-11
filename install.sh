apt-get update
apt-get install -y --no-install-recommends \
    git \
    tig \
    emacs \
    xclip \
    python3

apt-get autoremove

go get golang.org/x/tools/cmd/goimports
