class PagesController < ApplicationController
  
  def home
    @title = "Home"
    @showcases = Showcase.paginate(:page => params[:page], :per_page => 4)
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
