FROM ruby:2.3-alpine
ADD Gemfile /usr/src/app/
ADD Gemfile.lock /usr/src/app/
WORKDIR /usr/src/app/
RUN bundle install
ENTRYPOINT ["bundle","exec","sprinkle"]
