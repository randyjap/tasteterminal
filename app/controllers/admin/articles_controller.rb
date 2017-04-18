class Admin::ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to [:admin, @article]
    else
      @article.errors.full_messages
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to [:admin, @article]
    else
      @article.errors.full_messages
    end
  end

  private

  def article_params
    params.require(:article)
      .permit(:title, :article, :date, :category, :featured, :author_id, :approved)
  end
end
