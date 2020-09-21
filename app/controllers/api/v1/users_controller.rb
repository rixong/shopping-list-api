class Api::V1::UsersController < ApplicationController

  skip_before_action :authorized, only: [:create, :index]

  def profile
    render json: {user: UserSerializer.new(current_user), status: 'ok'}
  end

  def create
    user = User.create(user_params)
    # byebug
    if user.valid?
      token = encode_token({user_id: user.id})
      render json: { user: UserSerializer.new(user), jwt: token, status: 'ok' }
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

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end
