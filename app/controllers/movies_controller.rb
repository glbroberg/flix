class MoviesController < ApplicationController

  def index
    @movies= Movie.all
  end

  def show
    # fail - triggers error and shows state info on error page
    @movie = Movie.find(params[:id])
  end

  def edit 
    @movie = Movie.find(params[:id])
  end

  def update 
    # fail
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    
    # redirect_to event_path(@movie) -> same result as below
    redirect_to @movie
  end

  def new 
    @movie = Movie.new
  end

  def create     
    @movie = Movie.new(movie_params)
    @movie.save

    redirect_to @movie
  end

  def movie_params
    params
      .require(:movie)
      .permit(:title, :rating, :description, :total_gross, :released_on)
  end

end
