# Realtime Attendence Tracker for Campus Kids Connection

## Libraries
require 'sinatra'
require 'json/ext'
require 'haml'

## Load Models
require './models/kid'

## Define REST API routes

### CREATE
 post '/kids/new' do
  content_type :json
  puts params
  Kid.create(params)
 end

### READ

  #### ALL
  get '/kids/?' do
    content_type :json
    Kid.all.to_json
  end

  #### BY ROSTER
  get '/kids/roster/:location' do
    content_type :json
    Kid.where(roster: params["location"]).to_json
  end

### UPDATE
  put '/kids/update' do
    content_type :json

    params = JSON.parse(request.body.read)

    kid = Kid.where(_id: params["_id"]).first
    kid.current_location = params["current_location"]
    kid.confirmed = params["confirmed"]

    if (params["comments"])
      kid.comments = params["comments"]
    end
    kid.save
   end

### DELETE
  delete '/kids/destroy' do
    content_type :json
    #Kid.where(_id: params["id"]).destroy
  end

## Define Views

### Index
get '/' do
  haml :index, :layout => :default
end


### Locations

#### Main Street
get '/mst' do
  haml :mst, :layout => :default
end

#### Soquel Elementery
get '/soqe' do
  haml :soqe, :layout => :default
end

#### Santa Cruz Gardens
get '/scg' do
  haml :scg, :layout => :default
end
