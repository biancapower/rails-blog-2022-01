class ArticlesController < ApplicationController
	def index
		@time = Time.now
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(title: "This is a great lesson!", body: "Breakfast is the most important meal of the day", importance: 9)
		@article.save
	end
end
