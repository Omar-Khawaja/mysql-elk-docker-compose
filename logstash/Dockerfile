FROM logstash:6.6.1

RUN bin/logstash-plugin install logstash-input-jdbc

COPY ./mysql-connector-java-8.0.15.jar /opt/mysql-connector-java-8.0.15.jar

COPY ./logstash.yml /usr/share/logstash/config/logstash.yml

COPY ./logstash.conf /usr/share/logstash/pipeline/logstash.conf
