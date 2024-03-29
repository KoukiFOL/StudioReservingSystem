FROM ruby:3.2.2

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

RUN rm -f tmp/pids/server.pid
CMD ["rails", "server", "-b", "0.0.0.0"]