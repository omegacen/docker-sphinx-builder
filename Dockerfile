FROM python:3-slim

LABEL maintainer="teake.nutma@gmail.com"
LABEL version="1.2"
LABEL description="Image for building Sphinx documentation"

RUN apt-get update && apt-get install -y \
    make \
  && pip --no-cache-dir install \
    sphinx \
    sphinx_rtd_theme \
  && rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]
