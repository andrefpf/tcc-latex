FROM ubuntu:kinetic

WORKDIR /home

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ

RUN apt-get update

# Install utilities
RUN apt-get install -y make

# Install latex stuff
RUN apt-get install -y \
        latexmk \
        python3-pygments \
        texlive-lang-portuguese \
        texlive-latex-extra \
        texlive-publishers \
        texlive-fonts-recommended

VOLUME /code
WORKDIR /code

CMD ["bash"]