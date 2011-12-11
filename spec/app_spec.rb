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
end