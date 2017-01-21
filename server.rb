require 'sinatra'

get '/' do
  @view = {title: "Hello World", h1: "Welcome to ERB"}
  erb :'hello/world', :layout => :home
end

post '/' do
  @view = {title: params[:newTitle], h1: params[:newH1]}
  erb :'hello/world', :layout => :home
end
