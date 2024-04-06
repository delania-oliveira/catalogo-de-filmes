class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:title, :release_date,
                                                   :synopsis, :country, :time,
                                                   :director_id, :genre_id))
    @movie.save
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(params.require(:movie).permit(:title, :release_date,
                                              :synopsis, :country, :time,
                                              :director_id, :genre_id))
    redirect_to @movie
  end

end