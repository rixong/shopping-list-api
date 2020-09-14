class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    cur_list = user.lists.order(created_at: :desc).limit(1)[0]
    cur_list_items = cur_list.list_items
    categories = user.categories
    items = user.items
    render json: {user: user, curList: cur_list, items: items, curListItems: cur_list_items, categories: categories}
  end

end
