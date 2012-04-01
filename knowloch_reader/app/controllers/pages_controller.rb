class PagesController < ApplicationController
  respond_to :js, :html
  
  def home
    @title = "Home"
  end

  def help
    @title = "Help"
  end

end
