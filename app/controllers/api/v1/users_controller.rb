class Api::V1::UsersController < ApplicationController

  skip_before_action :authorized, only: [:create]


  def profile
    if current_user
      render json: {user: UserSerializer.new(current_user), status: 'ok'}
    else
      render json: {status: 'error', message: 'problem'}
    end
  end

  def create
    user = User.create(user_params)
  
    if user.valid?
      first_list = user.lists.create(name: "My first list")
      user.update(current_list: first_list.id)
      token = encode_token({user_id: user.id})
      make_default_categories(user.id)
      render json: { user: UserSerializer.new(user), jwt: token, status: 'ok' }
    else
      render json: {status: 'error', message: user.errors.full_messages}
    end
  end


  def edit
    list = List.find_by(id: params[:list_id])
    if list
      current_user.update(current_list: params[:list_id])
      render json: { status: 'ok' }
    else
      render json: {status: 'error', message: 'Not a valid list'}
    end
  end
  
  def index
    users = User.all
    render json: users
  end

  private

    def make_default_categories(id)
      Category.insert_all([
        {name: 'Produce', sort_order: 1, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Meat', sort_order: 2, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Dairy', sort_order: 3, user_id: id,created_at: Time.now, updated_at: Time.now },
        {name: 'Bakery', sort_order: 4, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Baking Supplies', sort_order: 5, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Frozen Foods', sort_order: 6, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Beverages & Snacks', sort_order: 7, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Household Items', sort_order: 8, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Pet Supplies', sort_order: 9, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Cans and Jars', sort_order: 10, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Deli', sort_order: 11, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Alcohol', sort_order: 12, user_id: id, created_at: Time.now, updated_at: Time.now },
        {name: 'Pharmacy', sort_order: 13, user_id: id, created_at: Time.now, updated_at: Time.now }
      ])
    end

    def user_params
      params.permit(:email, :password, :password_confirmation, :current_list)
    end

end
