class Profile < ApplicationRecord
	has_attached_file :image
	validates_attachment :image, content_type: { content_type:/\Aimage\/.*\z/ }, size: { less_than: 1.megabyte }
    has_secure_password
    validates_uniqueness_of :email
    has_many :reviews
end
