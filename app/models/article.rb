class Article < ApplicationRecord
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    Article.all
  end

  def show; end

  def new
    Article.new
  end

  def create
    @article = Article.create(article_params)
  end

  def edit; end

  def update
    @article.update(article_params)
  end

  def destroy
    @article.delete
  end

  private

  def article_params
    params.require[:article].permit[:title, :content]
  end

  def find_article
    @article = article.find(params[:id])
  end
end
