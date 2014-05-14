FROM micktwomey/python2.7:latest
MAINTAINER Michael Twomey <mick@twomeylee.name>

RUN mkdir /src

ADD requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt

VOLUME ["/ansible"]
WORKDIR /ansible

CMD []
ENTRYPOINT ["/usr/local/bin/ansible-playbook"]
