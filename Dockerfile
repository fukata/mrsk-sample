FROM ruby:3.2.0-slim

ARG PORT=3000
ENV PORT=${PORT}
ENV RUBYOPT='--yjit'
 
RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install -j3 --quiet
ADD . /app

EXPOSE $PORT

CMD ./bin/rails server -p $PORT -b '0.0.0.0'
#ENTRYPOINT ["./bin", "rails", "server", "-p", $PORT, "-b", "0.0.0.0"] 
