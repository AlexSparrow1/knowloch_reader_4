require 'spec_helper'

describe PagesController do
    
  describe "GET '/'" do
    it "should be successful" do
      get '/'
      response.should be_success
    end
    
    it "should have the right title" do
      get '/'
      response.should have_selector("title", :content => @base_title + " | Home")
    end
  end
  
  describe "GET '/help'" do
    it "should be successful" do
      get '/help'
      response.should be_success
    end
    
    it "should be successful" do
      get '/help'
      response.should have_selector("title", :content => @base_title + " | Help")
    end
  end
  
end