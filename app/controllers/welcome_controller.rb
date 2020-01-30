class WelcomeController < ApplicationController
  def index
    @articulos = Article.all
  end
  def contactos
    @email = 'erick@gmail.com'
  end
end