
## Dockerfile for hkatalog 
FROM haskell:7.8
MAINTAINER Inigo Mediavilla <txominpelu@gmail.com>


# Install git
RUN apt-get update\
 && apt-get install git vim tmux

WORKDIR /home/
RUN git clone https://github.com/txominpelu/hkatalog.git

WORKDIR hkatalog/
RUN cabal update
RUN cabal sandbox init
RUN cabal install --enable-tests

## run ghci by default unless a command is specified
CMD ["cabal" "repl"]
