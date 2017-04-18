class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      @user, status: 200
    else
      @user.errors.full_messages, status: 422
    end
  end

  def index
    @user = User.find(current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:password, :username)
  end
end
