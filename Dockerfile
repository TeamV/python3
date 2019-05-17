FROM huangjacky/debian
MAINTAINER huangjacky<huangjacky@163.com>
RUN apt-get install -y bzip2 && \
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -p /opt/miniconda -u -f -b && \
    apt-get clean && apt-get autoremove -y && \
    ln -sf /opt/miniconda/bin/* /usr/local/bin/ && \
    pip install -U ipython && \
    rm -f /tmp/miniconda.sh 
CMD ["/bin/bash"]