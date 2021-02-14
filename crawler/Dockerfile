FROM jupyter/scipy-notebook

USER root

RUN apt-get update && apt-get install -y \
    # mecab
    apt-utils \
    mecab \
    libmecab-dev \
    mecab-ipadic \
    mecab-ipadic-utf8 \
    libfont-afm-perl \
    poppler-data \
    swig \
    curl \
    file \
    sudo
RUN mkdir -p /usr/local/lib/mecab/dic
RUN chmod -R 777 /usr/local/lib/mecab
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
RUN sudo ./mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -n -y
RUN ln -s /usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd /usr/local/lib/mecab/dic/mecab-ipadic-neologd
RUN mecab -d /usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd
RUN echo 'dicdir=/usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd' > /usr/local/etc/mecabrc

WORKDIR /crawler
ADD freeze.yml /crawler/
RUN pip install selenium pandas scrapy mecab-python3
