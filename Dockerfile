FROM ruby:2.4-alpine

RUN apk add --update alpine-sdk nodejs

VOLUME /code
WORKDIR /code
COPY Gemfile* /code/

RUN bundle install

EXPOSE 4567

CMD bundle exec middleman server
