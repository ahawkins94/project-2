class Project < ApplicationRecord
	# belongs_to :user
	validates :title, :author, :desc, :github_link, presence: true
	validates :github_link, format: { with: URI.regexp, message: " must contain a valid url" }
  validates :image, :image2, :image3, presence: { message: " must have an image file attached" }

  has_attached_file :image
  has_attached_file :image2
  has_attached_file :image3

  def self.search(search)
    where("title ILIKE ? OR author ILIKE ?", "%#{search}%", "%#{search}%",) 
  end

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image2, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image3, :content_type => /\Aimage\/.*\Z/
end
