class Api::V1::ListItemsController < ApplicationController

  def create
    if ListItem.where("list_id=? AND item_id=?", params[:list_id], params[:item_id])[0]
      render json: {message: 'already exists!', status: 'error'}
    else
      list_item = ListItem.create(item_params)
      render json: {listItem: list_item, message:'done', status: 'ok'}
    end
  end

  def edit
  
  end

  private
    def item_params
      params.require(:list_item).permit(:item_id, :list_id, :quantity)
    end

end