require 'sinatra'
require 'haml'

get '/' do
  # haml :"container-app"
  # haml :fluid
  haml :hero
end