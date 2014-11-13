FROM quay.io/np__/haskell

MAINTAINER Nicolas Pouillard [https://nicolaspouillard.fr]

RUN git clone https://github.com/np/hx /hx
WORKDIR /hx
RUN cabal update && cabal install
RUN curl -O cmdcheck https://github.com/np/cmdcheck/raw/master/cmdcheck
RUN ./cmdcheck tests/*.t
