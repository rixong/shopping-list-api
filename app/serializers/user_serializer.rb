class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :current_list
  has_many :categories
  has_many :lists
  has_many :items
end
