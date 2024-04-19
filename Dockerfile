FROM nixos/nix

ADD https://api.github.com/repos/purcell/nix-emacs-ci/git/refs/heads/master /tmp/cache
RUN echo 'extra-experimental-features = flakes nix-command' >> /etc/nix/nix.conf
RUN nix profile install --impure --accept-flake-config "github:purcell/nix-emacs-ci#emacs-29-3"
RUN nix copy --no-require-sigs --to /nix-emacs $(type -p emacs)
RUN cd /nix-emacs/nix/store && ln -s *emacs* emacs

FROM alpine:3.19

RUN apk add --no-cache \
            curl \
            gnupg \
            openssh-client \
            wget \
            git \
            texmf-dist \
            texlive-full

COPY --from=0 /nix-emacs/nix/store /nix/store
ENV PATH="/nix/store/emacs/bin:$PATH"

RUN cd /tmp && git clone -b docker https://github.com/sschob/org-build.git && emacs -script org-build/init.el
ENV PATH="/tmp/org-build/bin:$PATH"

WORKDIR /workdir
VOLUME ["/workdir"]
