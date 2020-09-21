class Api::V1::UsersController < ApplicationController

  # skip_before_action :authorized, only: [:create]

  def profile
    # user = User.find_by(id: params[:id])
    render json: {message: 'hello'}
  end

  def create
# byebug
    user = User.create(
      email: params[:email], 
      password: params[:password], 
      password_confirmation: params[:password_confirmation]
    )
    # user.save
    if user.valid?
      render json: user
    else
      render json: {status: 'error', message: user.errors.messages}
    end

  end
  
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
    render json: {
      user: user, 
      curList: cur_list, 
      items: items, 
      curListItems: cur_list_items, 
      categories: categories
    }
  end

  private

    # def user_params
    #   params.require(:user).permit(
    #     :email
    #   )
    # end

end
