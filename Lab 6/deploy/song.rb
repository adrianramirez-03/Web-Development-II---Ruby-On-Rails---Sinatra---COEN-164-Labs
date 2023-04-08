
require 'sinatra'
require 'sinatra/reloader'

require_relative 'table'

get '/' do
  erb :home
end

get '/home' do
  @title = "home"
  erb :home  #home.erb under /views
end

get '/about' do
  @title = "about"
  erb :about #about.erb under /views
end

get '/contact' do
  @title = "contact"  
  erb :contact #contact.erb under /views
end

get '/songs' do
  @songs = Song.all
  erb :songs
end

get '/songs/new' do
  @song = Song.new

  erb :new_song
end

post '/songs' do
  song = Song.create(params[:song])
  redirect to("/songs/#{song.id}")
end

get '/songs/:id' do
  @song = Song.get(params[:id])
  erb :show_song
end

get '/songs/:id/edit' do
  @song = Song.get(params[:id])
  erb :edit_song
end

put '/songs/:id' do
  song = Song.get(params[:id])
  song.update(params[:song])
  redirect to("/songs/#{song.id}")
end

delete '/songs/:id' do
  Song.get(params[:id]).destroy
  redirect to('/songs')
end

not_found do
  "sorry, i don't know what to do"
end


post '/login' do
  "username = #{params[:username]}, password is #{params[:password]}"
end
=begin
get '/*' do
  "#{params[:splat]}"
end
=end

