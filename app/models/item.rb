class Item < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :lists, through: :list_items
  belongs_to :category

  validates :name, presence: true, uniqueness: true
end
