class Wall < ApplicationRecord
  belongs_to :user
  has_many :posts, :through => :user
end
