
require 'sinatra'
require 'sinatra/reloader'


get '/new' do
    erb :new #index.erb under /views
end

post '/test' do
    text = params[:message]
end