require 'rubygems'
require 'bundler'

Bundler.require :api

require 'yajl/json_gem'

post '/render' do
  content_type 'text/plain'

  begin
    template, data = JSON.parse request.body.read
    body Handlebars::Context.new.compile(template).call(data)
  rescue => e
    logger.error e.message
    status 500
    body nil
  end
end

get '/status' do
  content_type 'text/plain'

  status 200
  body 'OK'
end
