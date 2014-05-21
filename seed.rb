require 'mongoid'
require 'faker'

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


Kid.all.each do |kid|
	kid.delete
end

40.times do |kid|
	Kid.create({name: Faker::Name.name, account_id: "#{(rand * 10000).to_i}", roster: "mst", comments: "Comments"})
end

40.times do |kid|
	Kid.create({name: Faker::Name.name, account_id: "#{(rand * 10000).to_i}", roster: "scg"})
end

40.times do |kid|
	Kid.create({name: Faker::Name.name, account_id: "#{(rand * 10000).to_i}", roster: "soqe"})
end
