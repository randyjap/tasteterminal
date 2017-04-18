class FrontpageController < ApplicationController
  def index
    @category = params[:category]
    @location = params[:location]
    @user = params[:user]
    @heading ||= @category
    @heading ||= @location
    @heading ||= @user
    if @category && @location
      @articles = Article.where(approved: true).where(category: @category).where(location: @location)
    elsif @category
      @articles = Article.where(approved: true).where(category: @category)
    elsif @location
      @articles = Article.where(approved: true).where(location: @location)
    elsif @user
      @articles = Article.where(approved: true).where(user: @user)
    else
      @articles = Article.where(approved: true)
    end

    @featured = Article.where(featured: true).limit(4)
  end

  private

  def category_params
    params.require(:category)
  end
end
