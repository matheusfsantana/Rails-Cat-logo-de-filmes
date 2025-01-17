class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
    @movies = Movie.where(director_id: @director.id)
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)

    if @director.save
      # flash.notice "As informações do diretor foram salvas com sucesso!"
      return redirect_to directors_path
    end

    render :new
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    if @director.update(director_params)
      # flash.notice "As informações do diretor foram atualizadas com sucesso!"
      return redirect_to directors_path
    end
  end

  # def destroy
  #   @director = Director.find(params[:id])
  #   @director.destroy
  #   redirect_to(new_director_path)
  # end

  private
  def director_params
    params.require(:director).permit(:name, :nationality, :birth_date, :favorite_genre_id)
  end
end
