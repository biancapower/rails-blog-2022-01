class ArticlesController < ApplicationController
	def index
		@time = Time.now
		@articles = Article.all

		console
	end

	def new
		@article = Article.new

		console
	end

	def create
		@article = Article.new(article_params)
		
		if @article.save
			redirect_to articles_path
		else
			render :new
		end
	end

	private
		def article_params
			params.require(:article).permit(:title, :body, :importance)
		end
end
