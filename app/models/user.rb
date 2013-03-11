class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :posts, presence: true

  has_many :posts
  has_many :comments
end
