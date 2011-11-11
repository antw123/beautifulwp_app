class ShowcasesController < ApplicationController
  
  before_filter :authenticate, :only => [:new, :edit, :update, :destroy]
  
  def index
    redirect_to root_path
  end
  
  def new
    @title = "Add New Theme"
    @showcase = Showcase.new
  end
  
  def create
    @showcase = Showcase.new(params[:showcase])
    if @showcase.save
      flash[:success] = "Theme Successfully Added!"
      redirect_to showcase_path(@showcase)
    else
      @title = "Add New Theme"
      render 'new'
    end
  end
  
  def show
    @showcase = Showcase.find_by_id(params[:id])
    @title    = "#{@showcase.title} by #{@showcase.author}" 
  end
  
  def edit
    @showcase = Showcase.find_by_id(params[:id])
    @title    = "Edit Theme"
  end
  
  def update
    @showcase = Showcase.find_by_id(params[:id])
    if @showcase.update_attributes(params[:showcase])
      flash[:success] = "Update Successful!"
      redirect_to root_path
    else
      @title = "Edit Theme"
      render 'edit'
    end
  end
  
  def destroy
    @showcase = Showcase.find_by_id(params[:id])
    @showcase.destroy
    flash[:success] = "Theme Deleted"
    redirect_to root_path
  end
  
  private
  
    def authenticate
      deny_access unless signed_in? && current_user.admin?
    end

end
