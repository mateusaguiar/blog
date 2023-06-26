class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render json: @articles, status: :ok
  end

  def create
    @article = Article.create(title: params[:title], body: params[:body])

    render json: @article, status: :created
  end
end
