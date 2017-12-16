FROM python:3.6.3-stretch
MAINTAINER Vasilii Pankratov "pankratov.vs@gmail.com"
LABEL type="basic"

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install jupyter

RUN apt update
RUN apt install -y build-essential liblapack-dev libopenblas-dev libatlas-base-dev gfortran cython

RUN adduser --disabled-password --gecos "" mluser
RUN mkdir /ws
RUN mkdir /data
RUN chown -R mluser:mluser /ws
RUN chown -R mluser:mluser /data

USER mluser

RUN python3 -m pip install --user numpy 

RUN python3 -m pip install --user matplotlib
RUN python3 -m pip install --user pandas 
RUN python3 -m pip install --user scipy
RUN python3 -m pip install --user scikit-learn
RUN python3 -m pip install --user xlrd

VOLUME /data
VOLUME /ws

ENTRYPOINT ["jupyter", "notebook", "--no-browser", "--ip='*'", "--notebook-dir='/ws'"] 
CMD ["--NotebookApp.token=''"]
EXPOSE 8888
