# /controllers/expense.rb

require 'dm-core'
require 'dm-migrations'
require './models/Post.rb'

DataMapper.setup( :default, "sqlite3:///Users/sms/Projects/ComeDanceWithMe/db/database.db")

set :haml, :format => :html5

get '/' do
  haml :index, :locals => {
    :msg => "hello world"
  }
end
