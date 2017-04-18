class FrontpageController < ApplicationController
  def index
    category = params[:category]
    @articles = category ? Article.where(category: category) : Article.all
    @featured = Article.where(featured: true).limit(4)
  end

  private

  def category_params
    params.require(:category)
  end
end
