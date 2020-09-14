class Api::V1::ItemsController < ApplicationController

  def create
    if Item.where("user_id=? AND name=?", params[:user_id], params[:name])[0]
      render json: {message: 'already exists!', status: 'error'}
    else
      item = Item.create(items_params)
      render json: {item: item, message:'done', status: 'ok'}
    end
  end

  private
  def items_params
    params.require(:item).permit(:name, :user_id, :category_id)
  end
end
