class MigrateArticleBodyToActionText < ActiveRecord::Migration[6.1]
  include ActionView::Helpers::TextHelper
  def change
    rename_column :articles, :body, :body_old

    Article.all.each do |article|
      article.update_attribute(:body, simple_format(article.body_old))
    end
    
    remove_column :articles, :body_old
  end
end
