FROM python:3.7.0a2-stretch
MAINTAINER Vasilii Pankratov "pankratov.vs@gmail.com"

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install jupyter


RUN adduser --disabled-password --gecos "" mluser
USER mluser

RUN mkdir ~/workspace

VOLUME /home/mluser/workspace

ENTRYPOINT jupyter notebook --no-browser --ip='*' --notebook-dir='/home/mluser/workspace'
CMD --NotebookApp.token=''
EXPOSE 8888
