class PagesController < ApplicationController
  
  def home
    @title = "Home"
    @showcases = Showcase.paginate(:page => params[:page], :per_page => 8)
    @showcase = Showcase.find_by_id(params[:id])
  end

  def about
    @title = "About"
  end

  def submit
    redirect_to contact_path
  end

  def contact
    @title = "Contact"
  end

end
