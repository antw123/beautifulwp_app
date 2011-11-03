class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  
  def index
    @users = User.all
    @title = "All Users"
  end
  
  def new
    @title = "Sign Up"
    @user  = User.new 
  end
  
  def show
    correct_user
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
  
  def destroy
  end
  
  private
  
    def authenticate
      deny_access unless signed_in?
    end
    
    def correct_user
      @user = User.find_by_username(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

end
