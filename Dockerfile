FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y jing

WORKDIR /var/csl

RUN     apt-get install -y curl \
    &&  curl -o schema.tar.gz -L https://github.com/citation-style-language/schema/archive/v1.0.1.tar.gz \
    &&  tar zxvf schema.tar.gz \
    &&  mv schema-1.0.1 schema

CMD ["bash"]
