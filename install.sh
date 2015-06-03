# For emacs-snapshot
echo "deb http://ppa.launchpad.net/ubuntu-elisp/ppa/ubuntu trusty main" >> /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/ubuntu-elisp/ppa/ubuntu trusty main" >> /etc/apt/sources.list

apt-get update
apt-get install -y --force-yes --no-install-recommends \
    openssh-client \
    tmux \
    git \
    mercurial \
    tig \
    emacs-snapshot \
    xclip \
    silversearcher-ag \
    python3

apt-get autoremove

go get golang.org/x/tools/cmd/goimports
go get code.google.com/p/rog-go/exp/cmd/godef
go get -u github.com/davecgh/go-spew/spew
