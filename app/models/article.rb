class Article < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_rich_text :body

	def next
		Article.where("id > :id", id: id).first
	end

	def prev
		Article.where("id < :id", id: id).last
	end
end
