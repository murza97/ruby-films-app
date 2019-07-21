class FilmsController < ApplicationController
  http_basic_authenticate_with name: 'Admin', password: '89141',
                               except: %i[guest show create new]

  def index
    @film = Film.all
  end

  def sortra
    @film = Film.all
    @film = Film.where(params[:title]).order("rating DESC")
  end

  def sortye
    @film = Film.all
    @film = Film.where(params[:title]).order("year DESC")
  end

  def filtering_params
    @film = Film.all
    @film = Film.filter(params.slice(:title, :year, :country, :rating, :kind))
  end

  def new
    @film = Film.new
  end

  def show
    #@film = Film.all
    @film = Film.find(params[:id])
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @file = Film.find(params[:id])

    if(@file.update(film_params))
      redirect_to @file
    else
      render :edit
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    redirect_to films_path
  end

  def create
    #render plain: params[:film].inspect
    @film = Film.new(film_params)

    if(@film.save)
      redirect_to @film
    else
      render 'new'
    end
  end

  private def film_params
    params.require(:film).permit(:title, :body, :year, :rating, :text, :picture, :country, :kind)
  end
end
