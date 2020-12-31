FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn \
    dnsutils \
    iputils-ping \
    net-tools
WORKDIR /railstutorial
COPY Gemfile Gemfile.lock /railstutorial/
RUN bundle install