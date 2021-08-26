class ArticlesController < ApplicationController
    def index
      @articles = Article.all.order(id: :asc)
    end

    def new
      @article = Article.new
    end

    def create
      @article = Article.new(article_params)
      @article.save ? redirect_to(articles_path, notice: 'oluşturuldu') : render(:new)
    end

    def article_params
      params.require(:article).permit(:title, :body, :order)
    end
end
