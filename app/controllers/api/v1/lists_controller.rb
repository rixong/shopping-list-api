class Api::V1::ListsController < ApplicationController
  def index

  end

  def show
  end

  def current
    cur_list_items = ListItem.where("list_id=?", params[:id])
    render json: cur_list_items
  end

end
