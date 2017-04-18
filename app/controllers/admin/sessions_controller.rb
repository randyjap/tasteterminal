class Admin::SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user
      sign_in(@user)
      @user
    else
      error = ["Invalid username or password"]
      error, status: 401
    end
  end

  def destroy
    @user = current_user
    if @user
      sign_out
      @user, status: 200
    else
      error = ["Not logged in"]
      error, status: 404
    end
  end
end
