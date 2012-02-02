class ShowcasesController < ApplicationController
  
  before_filter :authenticate , :only => [:new, :create, :edit, :update, :destroy]
  
  def index
    @search = Showcase.search do
      fulltext params[:search]
    end
    @showcases = @search.results
  end
  
  def new
    @title = "Add New Theme"
    @showcase = Showcase.new
  end
  
  def create
    @showcase = current_user.showcases.build(params[:showcase])
    if @showcase.save
      flash[:success] = "Theme Successfully Added!"
      redirect_to showcase_path(@showcase)
    else
      @title = "Add New Theme"
      render 'new'
    end
  end
  
  def show
    @showcase  = Showcase.find_by_id(params[:id])
    @title     = "#{@showcase.title} by #{@showcase.author}"
    @showcases = @showcase.find_related_tags.limit(4) 
  end
  
  def edit
    @showcase = Showcase.find_by_id(params[:id])
    @title    = "Edit Theme"
  end
  
  def update
    @showcase = Showcase.find_by_id(params[:id])
    if @showcase.update_attributes(params[:showcase])
      flash[:success] = "Update Successful!"
      redirect_to showcase_path(@showcase)
    else
      @title = "Edit Theme"
      render 'edit'
    end
  end
  
  def destroy
    @showcase = Showcase.find_by_id(params[:id])
    @showcase.destroy
    flash[:success] = "Theme Successfully Deleted"
    redirect_to root_path
  end
  
  private
  

end
