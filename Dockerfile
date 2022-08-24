FROM python:3-slim

LABEL maintainer="teake.nutma@gmail.com"
LABEL version="1.3"
LABEL description="Image for building Sphinx documentation"

RUN apt-get update && apt-get install -y \
    make \
    git \
  && pip --no-cache-dir install \
    sphinx \
    sphinx_rtd_theme \
    sphinx-gitstamp \
    git+https://github.com/teake/docxbuilder.git@8fa015c86551a7c216571f25fd77f450ce1e1d09 \
  && rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]
