class Article < ActiveRecord::Base
	belongs_to :user
	has_many :article_categories # <= this was accidentally :articles
	has_many :categories, through: :article_categories  #<= this was :articles_categories  ... extra 'S' in there
	validates :title, presence: true
	validates :content, presence: true
	validates :categories, presence: true
end
