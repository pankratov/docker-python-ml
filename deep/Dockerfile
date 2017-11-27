FROM python:3.6.3-stretch
MAINTAINER Vasilii Pankratov "pankratov.vs@gmail.com"
LABEL type="deep"

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install jupyter

RUN apt update
RUN apt install -y build-essential liblapack-dev libopenblas-dev libatlas-base-dev gfortran cython

RUN adduser --disabled-password --gecos "" mluser
RUN mkdir /ws
RUN chown mluser:mluser /ws

USER mluser

RUN python3 -m pip install --user numpy 

RUN python3 -m pip install --user matplotlib
RUN python3 -m pip install --user pandas 
RUN python3 -m pip install --user scipy
RUN python3 -m pip install --user scikit-learn

# Add some deep learning tools
RUN python3 -m pip install --user pillow
RUN python3 -m pip install --user keras
RUN python3 -m pip install --user tensorflow
RUN python3 -m pip install --user seaborn
RUN python3 -m pip install --user plotly
RUN python3 -m pip install --user h5py
RUN python3 -m pip install --user imgaug

VOLUME /ws

ENTRYPOINT ["jupyter", "notebook", "--no-browser", "--ip='*'", "--notebook-dir='/ws'"] 
CMD ["--NotebookApp.token=''"]
EXPOSE 8888
