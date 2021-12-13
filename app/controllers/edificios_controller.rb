class EdificiosController < ApplicationController
  def index
  end

  def show
  end

  def new
    @edificio = Edificio.new
  end

  def create
    @edificio = Edificio.new(edificio_params)
    if @edificio.save
      redirect_to(edificios_path)
    else
      render("new") 
    end
  end

  def edit
  end

  def delete
  end

  private
  def edificio_params
    params.require(:edificio).permit(:nombre, :direccion, :ciudad)
  end
  
end
