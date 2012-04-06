class PagesController < ApplicationController
  
  def home
    @title = "WordPress Theme Gallery | Free & Premium Wordpress Themes | Best WordPress Themes"
    @showcases = Showcase.paginate(:page => params[:page], :per_page => 20)
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
  
  def privacy
    @title = "Privacy Policy"
  end
  
  def terms
    @title = "Terms of Use"
  end
  
  def advertise
    @title = "Advertise"
  end

end
