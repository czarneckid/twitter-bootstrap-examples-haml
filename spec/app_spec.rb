require File.dirname(__FILE__) + '/spec_helper'

describe 'Application' do
  def app
    Sinatra::Application
  end
  
  describe 'index' do
    it 'should show the index page' do
      get '/'
      last_response.should be_ok
    end
  end

  describe 'the various layouts' do
    it 'should be able to show the different layouts' do
      %w(container-app fluid hero).each do |view|
        get "/#{view}"
        last_response.should be_ok
      end
    end
  end
end