class BookmarksController < ApplicationController
  before_action :set_list

  def create
    # Trouver le film par son ID et créer un bookmark
    @movie = Movie.find(params[:movie_id])
    @bookmark = @list.bookmarks.create(movie: @movie)
    redirect_to @list, notice: "Le film a été ajouté à votre liste."
  end

  def destroy
    # Supprimer un bookmark existant
    @bookmark = @list.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to @list, notice: "Le film a été supprimé de la liste."
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end
end
end
