class User < ApplicationRecord
  has_one :profile
  has_many :events
  has_secure_password
  validates_uniqueness_of :email
end
