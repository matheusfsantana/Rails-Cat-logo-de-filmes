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
    @movie = Movie.new(movie_params)
    if @movie.save
      return redirect_to movies_path 
    end

    render :new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      return redirect_to movie_path(@movie)
    end

    render :edit
  end

  # def destroy
  #   @movie = movie.find(params[:id])
  #   @movie.destroy
  #   redirect_to(new_movie_path)
  # end

  def movie_params
    params.require(:movie).permit(:title, :release_year, :synopsis, :origin, :duration, :genre_id, :director_id)
  end
end
