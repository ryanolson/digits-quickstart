FROM nvidia/caffe

RUN apt-get update && apt-get install -y --no-install-recommends \
        cython \
        gcc g++ git graphviz \
        libevent-dev liblmdb-dev libhdf5-serial-dev liblmdb-dev libhdf5-serial-dev \
        python-pip python-gevent python-h5py python-h5py python-matplotlib \
        python-numpy python-pandas python-protobuf python-yaml python-protobuf \
        python-yaml python-tk && \
    rm -rf /var/lib/apt/lists/*

RUN pip install git+https://github.com/ryanolson/DIGITS.git@digits-5.0

WORKDIR /digits
COPY . .
RUN pip install plugins/data/sunnybrook

VOLUME /jobs
WORKDIR /jobs
ENV DIGITS_JOBS_DIR=/jobs

ENTRYPOINT ["python", "-m", "digits"]
