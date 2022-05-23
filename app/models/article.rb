class Article < ApplicationRecord
	has_many :comments

	def next
		Article.where("id > :id", id: id).first
	end

	def prev
		Article.where("id < :id", id: id).last
	end
end
