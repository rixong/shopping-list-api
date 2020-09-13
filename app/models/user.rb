class User < ApplicationRecord
  has_many :lists
  has_many :items
  has_many :categories

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX}
end
