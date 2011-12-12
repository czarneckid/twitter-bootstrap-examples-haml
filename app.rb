require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

%w(container-app fluid hero).each do |view|
  get "/#{view}" do
    haml view.to_sym
  end
end