FROM starefossen/ruby-node:latest
RUN apt-get update -qq && \
    apt-get install -y nano build-essential libpq-dev && \
    yarn && \
    gem install bundler
RUN mkdir /project
COPY Gemfile Gemfile.lock /project/
WORKDIR /project
RUN bundle install
COPY . /project
EXPOSE 3000