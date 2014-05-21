require 'mongoid'

## Set up Object Document Mapper
Mongoid.configure do |config|
  config.master = Mongo::DB.new(ENV['MONGOLAB_DB_NAME'], Mongo::Connection.from_uri(ENV['MONGOLAB_CONNECTION_URL']))
end

## Object for our database collection
class Kid
  include Mongoid::Document
  field :name, type: String
  field :account_id, type: Integer
  field :roster, type: String
  field :current_location, type: String, default: "home"
  field :confirmed, type: Boolean, default: false
  field :comments, type: String
end
