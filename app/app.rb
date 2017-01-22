require 'sinatra'
require 'message'

module SampleSinatra

  class App < Sinatra::Base

    get '/' do
      @view = {title: Message.hello, h1: "Welcome to ERB"}
      erb :'hello/world', :layout => :home
    end

    post '/' do
      @view = {title: Message.hello(params[:newTitle]), h1: params[:newH1]}
      erb :'hello/world', :layout => :home
    end

  end
end
