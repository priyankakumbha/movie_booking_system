class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy, :image]
  def index
    @movies = Movie.all
  end
  def show
    @ticket = @movie.tickets.new
  end

  def new
  end

  def edit
  end

  def create
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:name, :image)
    end


end
