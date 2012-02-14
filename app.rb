require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

%w(container-app fluid hero starter-template).each do |view|
  get "/#{view}" do
    haml view.to_sym
  end
end