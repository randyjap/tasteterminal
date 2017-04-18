class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to [:admin, @user]
    else
      @user.errors.full_messages
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      redirect_to [:admin, @user]
    else
      @user.errors.full_messages
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user)
      .permit(:username, :first_name, :last_name, :email, :bio, :password)
  end
end
