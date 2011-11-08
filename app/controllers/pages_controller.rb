class PagesController < ApplicationController
  
  def home
    @title = "Home"
    @showcases = Showcase.all
    @showcase = Showcase.find_by_id(params[:id])
  end

  def about
    @title = "About"
  end

  def submit
  end

  def contact
    @title = "Contact"
  end

end
