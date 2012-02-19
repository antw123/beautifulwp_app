module ApplicationHelper
  
  #Return a title on a per-page basis.
  def title
    base_title = "WordPress Theme Gallery | Free & Premium Wordpress Themes | Best WordPress Themes"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
