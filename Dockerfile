FROM debian
MAINTAINER Robert Carr <rob@ixprimeinc.com>
RUN apt-get update && apt-get install -y \
	vim \
	curl \
	pyflakes \
	pylint \
	git

RUN mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
RUN git clone https://github.com/scrooloose/syntastic.git $HOME/.vim/bundle/syntastic
RUN echo ': ${LANG:=C.UTF-8}; export LANG' >> /etc/profile
ADD data/.vimrc /root/.vimrc
ENV LANG C.UTF-8

ENTRYPOINT ["/usr/bin/vim"]

