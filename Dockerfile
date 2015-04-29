FROM ruby

RUN mkdir -p /src
WORKDIR /src

ADD Gemfile /src/Gemfile
ADD Gemfile.lock /src/Gemfile.lock
RUN bundle

ADD . /src

EXPOSE 9292
CMD bundle exec rackup -p 9292 -o 0.0.0.0 config.ru

