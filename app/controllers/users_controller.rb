class UsersController < ApplicationController
  
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

end
