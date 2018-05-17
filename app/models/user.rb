class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable
  has_many :posts
  has_one :wall
end
