class Project < ApplicationRecord
	# belongs_to :user
	validates :title, :author, :desc, :github_link, presence: true
	# validates :image_url, format: { with: URI.regexp, message: " must contain a valid url" }
	validates :github_link, format: { with: URI.regexp, message: " must contain a valid url" }

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  has_attached_file :image2, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  def self.search(search)
    where("title ILIKE ? OR author ILIKE ?", "%#{search}%", "%#{search}%",) 
  end

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image2, :content_type => /\Aimage\/.*\Z/
end
