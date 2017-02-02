FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.6

RUN gem install check-cpu-steal --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["check_cpu_steal.rb"]
CMD ["--help"]
