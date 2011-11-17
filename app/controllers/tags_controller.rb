class TagsController < ApplicationController
  
  def show
    @showcases = Showcase.find_tagged_with(params[:id])
  end

end
