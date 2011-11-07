class PagesController < ApplicationController
  
  def home
    @title = "Home"
    @showcases = Showcase.all
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
