This Docker Compose file sets up Elastic stack (ELK stack) and syncs MySQL data
into elasticsearch. The Logstash pipeline configuration file is currently set to
sync every minute and avoids duplication of data. You can learn more about
Logstash pipeline configuration files at
https://www.elastic.co/guide/en/logstash/current/config-setting-files.html

To use this this Compose file, simply run `docker-compose up -d`.