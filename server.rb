require 'sinatra'

get '/' do
  @view = {title: "Hello World", h1: "Welcome to ERB"}
  erb :'hello/world'
end
