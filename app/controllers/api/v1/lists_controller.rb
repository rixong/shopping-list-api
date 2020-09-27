class Api::V1::ListsController < ApplicationController

  skip_before_action :authorized, only: [:current, :delete]

  def create
    list = List.create(name: list_params[:name], user_id: current_user.id)
    if list.valid?
      render json: {list: ListSerializer.new(list), status: 'ok'}
    else
      render json: {status: 'error', message: user.errors.messages}
    end
  end

  def delete
    list = List.find_by(id: params[:id])
    if list.valid?
      list.delete
      render json: {message: 'List deleted', status: 'ok'}
    else
      render json: {status: 'error', message: user.errors.messages}
    end
  end

  def current
    cur_list_items = ListItem.where("list_id=?", params[:id])
    render json: cur_list_items
  end

  private

    def list_params
      params.require(:list).permit(:name)
    end

end
