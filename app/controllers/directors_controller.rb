class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(params.require(:director).permit(:name, :nationality,
                                                   :date_of_birth, :favorite_genre))
    @director.save
    redirect_to directors_path
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    @director.update(params.require(:director).permit(:name, :nationality,
                                                    :date_of_birth, :favorite_genre))
    redirect_to @director
  end

end