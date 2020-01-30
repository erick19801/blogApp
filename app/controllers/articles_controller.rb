class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update]
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: "Article #{@article.title} created"
    else
      redirect_ to :new
    end
  end
  def show
  end
#solicitudes
  def index
    @articulos = Article.all
  end
  def edit
  end
  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end
  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
  def set_article
    @article = Article.find(params[:id])
  end
end
