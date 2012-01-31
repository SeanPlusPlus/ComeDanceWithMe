# /controllers/expense.rb

require 'data_mapper'
require './models/Post.rb'

DataMapper.setup( :default, "sqlite3:///Users/sms/Projects/ComeDanceWithMe/db/database.db")

set :haml, :format => :html5

get '/' do
  haml :index, :locals => {
    :msg => "hello world"
  }
end

get '/new' do
  haml :new, :locals => {
    :title => "New",
    :posts => Post.all
  }
end

post '/new' do
  args = {}
   Post.properties.each do |i|
    sym = i.name.to_sym
    if sym == :id then next end
    args[sym] = params[sym]
  end
  post = Post.first_or_create(args)
  redirect "/post/#{post.id}/show"
end

get '/post/:id/show' do
  id = params[:id].to_i
  haml :show, :locals => {
    :title => "Show",
    :post => Post.get(id)
  }
end

