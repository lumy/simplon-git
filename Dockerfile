FROM ruby:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y bash vim nano emacs-nox git-man

RUN gem install githug

WORKDIR /tuto/
COPY README.md .
COPY bashrc /root/.bashrc

ENTRYPOINT ["/bin/bash"]
