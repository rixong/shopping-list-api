class Api::V1::ListItemsController < ApplicationController

  skip_before_action :authorized

  def create
    if ListItem.where("list_id=? AND item_id=?", params[:list_id], params[:item_id])[0]
      render json: {message: 'This item is already on your list.', status: 'exists'}
    else
      list_item = ListItem.create(item_params)
      render json: {listItem: ListItemSerializer.new(list_item), message:'done', status: 'ok'}
    end
  end

  def edit
    list_item = ListItem.find_by(id: params[:id])
    list_item.update(active: !list_item.active)
    render json: {listItem: ListItemSerializer.new(list_item), message:'done', status: 'ok'}
  end

  private
    def item_params
      params.require(:list_item).permit(:item_id, :list_id, :quantity)
    end

end
