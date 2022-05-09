class ArticlesController < ApplicationController
	def index
		@time = Time.now
		@articles = Article.all
	end
end
