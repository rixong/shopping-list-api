class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :sort_order
end
