class Api::V1::ItemsController < ApplicationController
  skip_before_action :authorized

  def create
    check_item = Item.find_by(user_id:items_params[:user_id], name: items_params[:name])
    if check_item
      render json: {item: check_item, message: 'This item is already on your master list.', status: 'exists'}
    else
      item = Item.create(items_params)
      render json: {item: item, message:'done', status: 'ok'}
    end
  end

  def delete
    item = Item.find_by(id: params[:id])
    if item
      item.delete
      ListItem.where(item_id: params[:id]).destroy_all
    end
  end

  private
  def items_params
    params.require(:item).permit(:name, :user_id, :category_id)
  end
end
