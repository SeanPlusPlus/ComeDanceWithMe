# /models/Expense.rb

require 'rubygems'
require 'data_mapper'

DataMapper.setup( :default, "sqlite3:///Users/sms/Projects/ComeDanceWithMe/db/database.db")

class Post
  include DataMapper::Resource

  property :id,          Serial # Auto-increment integer key
  property :title,       String
  property :description, String
end

DataMapper.finalize
