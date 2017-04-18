class Admin::ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    debugger
    @article = Article.new(article_params)
    @article.author = current_user
    if @article.save
      redirect_to [:admin, @article]
    else
      @article.errors.full_messages
    end
  end

  def new
    @article = Article.new
  end

  private

  def article_params
    params.require(:article).permit(:title, :article, :date, :category, :featured)
  end
end
