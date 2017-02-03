require 'sinatra'
require 'sinatra/activerecord'
require 'message'
require 'action'

module SampleSinatra

  class App < Sinatra::Base
    register Sinatra::ActiveRecordExtension

    get '/' do
      @view = {title: Message.hello, h1: "Welcome to ERB"}
      erb :'hello/world', :layout => :home
    end

    post '/' do
      @view = {title: Message.hello(params[:newTitle]), h1: params[:newH1]}
      erb :'hello/world', :layout => :home
    end

    get '/article' do
      @view = {title: "Lorem Ipsum"}
      erb :'article'
    end

    not_found do
      erb :error404
    end    

  end
end
