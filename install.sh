# For emacs-snapshot
echo "deb http://ppa.launchpad.net/ubuntu-elisp/ppa/ubuntu trusty main" >> /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/ubuntu-elisp/ppa/ubuntu trusty main" >> /etc/apt/sources.list

apt-get update
apt-get install -y --no-install-recommends \
    openssh-server \
    bash-completion \
    language-pack-en \
    tmux

apt-get autoremove

go get -u github.com/davecgh/go-spew/spew
