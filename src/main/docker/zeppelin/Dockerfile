FROM radanalyticsio/radanalytics-scala-spark

MAINTAINER Nicola Ferraro ni.ferraro@gmail.com

ENV ZEPPELIN_VERSION=0.7.0

ADD . /setup-zeppelin
WORKDIR /setup-zeppelin
RUN ./setup.sh

ENV MASTER=spark://sparky:7077


EXPOSE 8080
CMD ["/usr/share/zeppelin/bin/run.sh"]
