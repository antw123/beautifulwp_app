class TagsController < ApplicationController
  
  def show
    @showcases = Showcase.tagged_with(params[:id])
  end

end
