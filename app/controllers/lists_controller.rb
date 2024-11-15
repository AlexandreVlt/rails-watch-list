class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def show
    @bookmarks = @list.bookmarks  # Liste des films bookmarkés pour cette liste
  end
  def new
    @list = List.new
  end
  def create
    @list = List.new(list_params)
    @list.save # Will raise ActiveModel::ForbiddenAttributesError
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
