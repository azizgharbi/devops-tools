FROM debian:stretch-slim

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y python3 python3-pip sshpass git openssh-client && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
    
RUN pip3 install --upgrade pip cffi && \
    pip install ansible==2.9.21 && \
    pip install mitogen ansible-lint jmespath && \
    pip install --upgrade pywinrm && \
    rm -rf /root/.cache/pip

WORKDIR /work


CMD [ "python3", "--version" ]