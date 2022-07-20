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
    docxsphinx \
    git+https://github.com/teake/docxbuilder.git@18a7094dd5832ce3a08ef452b5fcedd4eb397231 \
  && rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]
