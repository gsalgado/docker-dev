apt-get update
apt-get install -y --no-install-recommends \
    openssh-server \
    vim-gtk \
    git \
    mercurial \
    tig \
    bash-completion \
    language-pack-en \
    python3

apt-get autoremove

go get github.com/axw/gocov/gocov
go get golang.org/x/tools/cmd/gorename
go get github.com/rogpeppe/godef
go get github.com/nsf/gocode
go get golang.org/x/tools/cmd/goimports
go get golang.org/x/tools/cmd/oracle
go get github.com/golang/lint/golint
go get github.com/kisielk/errcheck
go get github.com/jstemmer/gotags
go get -u github.com/davecgh/go-spew/spew
