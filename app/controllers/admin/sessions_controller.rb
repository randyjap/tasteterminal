class Admin::SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by_credentials(
      params[:session][:username],
      params[:session][:password]
    )

    if @user
      sign_in(@user)
      redirect_to new_admin_article_path
    else
      redirect_to new_admin_session_path
    end
  end

  def destroy
    @user = current_user
    sign_out if @user
    render new
  end
end
