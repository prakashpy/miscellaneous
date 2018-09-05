FROM amazonlinux:latest

RUN YUM -y install which unzip aws-cli
RUN yum -y install python-pip

#RUN adduser test -u 2000

RUN pip install boto3

ADD run.py /home/test/run.py

#ADD run.py /usr/local/bin/run.py
#WORKDIR /usr/local/bin/
#ENTRYPOINT ["python -B /usr/local/bin/run.py"]

CMD ["python", "run.py"]
