class Api::V1::CategoriesController < ApplicationController
  skip_before_action :authorized

def index

end

def edit
  p params[:order]
  user = User.find_by(id: params[:user_id])
  cats = user.categories
  order = params[:order].split(',')
  order.each_with_index do |order, index|
    cats.find {|cat| cat.id == order.to_i}.update_attribute(:sort_order, index)
  end
end

end
