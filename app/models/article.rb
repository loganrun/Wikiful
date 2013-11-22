class Article < ActiveRecord::Base
	belongs_to :user
	has_many :articles
	has_many :categories, through: :articles_categories
	validates :title, presence: true
	validates :content, presence: true
	validates :categories, presence: true
end
