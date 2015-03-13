# For emacs-snapshot
echo "deb http://ppa.launchpad.net/ubuntu-elisp/ppa/ubuntu trusty main" >> /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/ubuntu-elisp/ppa/ubuntu trusty main" >> /etc/apt/sources.list

apt-get update
apt-get install -y --no-install-recommends \
    openssh-server \
    vim-gtk \
    git \
    mercurial \
    tig \
    bash-completion \
    language-pack-en \
    python3 \
    tmux

apt-get autoremove

go get golang.org/x/tools/cmd/gorename
go get github.com/rogpeppe/godef
go get github.com/nsf/gocode
go get golang.org/x/tools/cmd/goimports
go get golang.org/x/tools/cmd/oracle
go get github.com/golang/lint/golint
go get github.com/jstemmer/gotags
go get -u github.com/davecgh/go-spew/spew
