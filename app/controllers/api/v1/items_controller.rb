class Api::V1::ItemsController < ApplicationController

  def create
    check_item = Item.where("user_id=? AND name=?", params[:user_id], params[:name])[0]
    if check_item
      render json: {item: check_item, message: 'Item already exists!', status: 'exists'}
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
