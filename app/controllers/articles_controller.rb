class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render json: @articles, status: :ok
  end

  def create
    @article = Article.create!(title: params[:title], body: params[:body])

    render json: @article, status: :created
  end

  def show
    @article = Article.find(params[:id])

    render json: @article, status: :ok
  end

  def update
    @article = Article.find(params[:id])
    @article.update!(title: params[:title], body: params[:body])

    render json: @article, status: :ok
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy!

    render json: @article, status: :ok
  end

end
