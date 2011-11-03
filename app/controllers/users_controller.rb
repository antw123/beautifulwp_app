class UsersController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update]
  
  def new
    @title = "Sign Up"
    @user  = User.new 
  end
  
  def show
    @user = User.find_by_username(params[:id])
    @title = @user.name
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Beautifulwp!"
      redirect_to user_path(@user)
    else
      @title = "Sign Up"
      render 'new'
    end
  end
  
  def edit
    @user  = User.find_by_username(params[:id])
    @title = "Edit User"
  end
  
  def update
    @user  = User.find_by_username(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Update Successful!"
      redirect_to user_path(@user)
    else
    @title = "Edit User"
    render 'edit'
    end
  end
  
  private
  
    def authenticate
      deny_access unless signed_in?
    end

end
