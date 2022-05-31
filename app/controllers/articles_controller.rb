class ArticlesController < ApplicationController

	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def index
		@time = Time.now
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.user = current_user
		
		if @article.save
			redirect_to articles_path
		else
			render :new
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		
		if @article.update(article_params)
			redirect_to articles_path
		else
			render :edit
		end
	end

	def destroy
		@article = Article.find(params[:id])

		@article.destroy

		redirect_to home_path
	end

	private
		def article_params
			params.require(:article).permit(:title, :body, :importance)
		end
end
