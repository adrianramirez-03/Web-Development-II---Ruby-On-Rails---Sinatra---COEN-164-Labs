require 'dm-core'
require 'dm-migrations'

configure :development do
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/songdatabase.db")
end

configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
  DataMapper.auto_migrate!
end

class Song
  include DataMapper::Resource
  
  property :id, Serial
  property :title, String
  property :lyrics, Text
  property :length, Integer
  property :release, Date
end

DataMapper.finalize


get '/songs' do
  @allsongs = Song.all
  erb :allsongs
end
