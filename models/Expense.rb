require 'dm-core'
require 'dm-migrations'
require './config.rb'


class Expense
  include DataMapper::Resource

  property :id,           Serial    # Auto-increment integer key
  property :description,  String    # What you bought
  property :amount,       Float     # How much it costs
  property :expense_date, DateTime  # When you bought it
end
