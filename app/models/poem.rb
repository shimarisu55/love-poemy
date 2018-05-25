class Poem < ApplicationRecord
	has_many :tags
	has_many :words
	has_many :grammars
	#has_one :author
	mount_uploader :image, ImageUploader

end
