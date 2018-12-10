FROM ruby

USER root

RUN apt-get update && apt-get install -y emacs25-nox vim-nox mlocate locales-all tmux
