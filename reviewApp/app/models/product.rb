class Product < ApplicationRecord
	has_many :reviews
	 validates_uniqueness_of :product_id
	has_attached_file :image
	validates_attachment :image, content_type: { content_type:/\Aimage\/.*\z/ }, size: { less_than: 1.megabyte }


end
