class Book < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :user
	belongs_to :category
	has_many :reviews

end
