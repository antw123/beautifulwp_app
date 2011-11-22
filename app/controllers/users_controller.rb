class UsersController < ApplicationController
  before_filter :authenticate
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => [:index, :destroy]
  
  def index
    @users = User.paginate(:page => params[:page], :per_page => 3)
    @title = "All Users"
  end
  
  def new
    @title = "Sign Up"
    @user  = User.new 
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
  
  def show
    correct_user
    @title = @user.name
    @users = User.all
    @showcases = Showcase.all
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
    @user.destroy
    flash[:success] = "User Deleted"
    redirect_to users_path
  end
  
  private
  
    def correct_user
      @user = User.find_by_username(params[:id])
      redirect_to(root_path) unless current_user?(@user) || current_user.admin?
    end
    
    def admin_user
      @user = User.find_by_username(params[:id])
      redirect_to(root_path) unless (current_user.admin? && !current_user?(@user))
    end

end
