class ApplicationController < ActionController::Base
  before_action :set_film
  def set_film
    @film = Film.all
  end
  protect_from_forgery with: :exception
end
