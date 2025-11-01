FROM ruby:2.7

ENV BUNDLER_VERSION=2.4.14

WORKDIR /home/app

COPY Gemfile* ./

RUN gem install bundler:${BUNDLER_VERSION} \
 && bundle _${BUNDLER_VERSION}_ install

COPY . .

EXPOSE 4000

CMD [ "bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--trace"]
