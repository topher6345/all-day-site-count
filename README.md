# All Day Site Count
An application for daycares to manage attendance and capacities across locations in realtime.

###Built with

* [Sinatra](http://www.sinatrarb.com/) gem
* [Mongoid](http://two.mongoid.org/) gem
* [Angular.js](https://angularjs.org)


## Getting started

clone the repository

### Set MongoDB Environment Variables

```
export MONGOLAB_DB_NAME= [database name]
export MONGOLAB_CONNECTION_URL= [database url]
```

### To Seed Database

`ruby seed.rb`

using [Faker](http://faker.rubyforge.org/) gem

## Usage

### To Start Server

`rackup config.ru -p 3000`

### Index page

Reports on the globabl state of the locations.

### Site pages

Report on the state of attendance and capacity for location.

## Development

to watch sass

`sass --watch public/stylesheets/style.scss:public/stylesheets/style.css`
