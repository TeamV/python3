FROM huangjacky/ubuntu
MAINTAINER huangjacky<huangjacky@163.com>
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && \
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -p /opt/miniconda -u -f -b && \
    ln -sf /opt/miniconda/bin/* /usr/local/bin/ && \
    pip install -U requests ipython && \
    apt-get clean && apt-get autoremove -y
CMD ["/bin/bash"]