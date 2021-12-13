class EdificiosController < ApplicationController
  def index
    @edificios = Edificio.order(id: :desc)
  end

  def show
    @edificio = Edificio.find(params[:id])
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
    @edificio = Edificio.find(params[:id])
    
  end

  def update 
    @edificio = Edificio.find(params[:id])
    if @edificio.update(edificio_params)
      redirect_to(edificios_path(@edificio))
    else
      render("edit")
  end
end

  def delete
    @edificio = Edificio.find(params[:id])
  end

  def destroy
    @edificio = Edificio.find(params[:id])
    @edificio.destroy
    redirect_to(edificios_path(@edificio))
  end
  

  private
  def edificio_params
    params.require(:edificio).permit(:nombre, :direccion, :ciudad)
  end
  
end