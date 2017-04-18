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
      @user.errors.full_messages
    end
  end

  def destroy
    @user = current_user
    if @user
      sign_out
    end
    render new
  end
end
