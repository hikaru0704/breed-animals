class UsersController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update, :new]
  before_action :set_user, only: [:show, :edit, :update]
  
  def index
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def show
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(params[:user_id])
    else
      render 'edit'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :age, :sex, :password,
                                 :password_confirmation)
  end
  
  def set_user
     @user = User.find(params[:id])
  end
end