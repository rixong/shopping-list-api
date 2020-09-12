class Item < ApplicationRecord
  belongs_to :user
  belongs_to :list_items
  belongs_to :lists, through: :list_items
  belongs_to :categories
end
