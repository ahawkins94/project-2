class Project < ApplicationRecord
	# belongs_to :user
	validates :title, :author, :desc, :image_url, :github_link, presence: true
	validates :image_url, format: { with: URI.regexp, message: " must contain a valid url" }
	validates :github_link, format: { with: URI.regexp, message: " must contain a valid url" }
end
