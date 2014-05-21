# All Day Site Count
A real time daycare capacity tracker


## Getting started

clone the repository

### Setup MongoDB Environment Variables

export MONGOLAB_DB_NAME=
export MONGOLAB_CONNECTION_URL=

to start server

`rackup config.ru -p 3000`

to seed database

`ruby seed.rb`

to watch sass

`sass --watch public/stylesheets/style.scss:public/stylesheets/style.css`
