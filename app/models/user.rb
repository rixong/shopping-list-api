class User < ApplicationRecord
  has_many :lists, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :categories
end
