class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def sef_show
    @article = Article.find_by(sef_link: params[:sef])
    render :show
  end

  def index
    @articles = Article.all.order(id: :asc)
  end

  def new
    @article = Article.new
  end

  def show; end

  def edit; end

  def create
    @article = Article.new(article_params)
    @article.save ? redirect_to(articles_path, notice: 'oluşturuldu') : render(:new)
  end

  def update
    @article.update(article_params) ? redirect_to(article_path(@article), notice: 'Güncellendi') : render(:edit)
  end

  def destroy
    @article.destroy
    redirect_to(articles_path, notice: 'Silindi')
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :order)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
