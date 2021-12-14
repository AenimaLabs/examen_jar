class DepartamentosController < ApplicationController
  def index
    @departamentos = Departamento.order(numero: :desc)
  end

  def show
    @departamento = Departamento.find(params[:id])
    @edificios = Edificio.all
  end

  def new
    @departamento = Departamento.new
    @edificios = Edificio.all
  end

  def create 

    @departamento = Departamento.new(departamento_params)
    # Strong parameters, previene ataques de mass assignment
    respond_to do |format|
      if @departamento.save
        format.html {
          redirect_to @departamento, notice: "Departamento creado."
        }
      else
        format.html { render :new }
      end
      
    end
    

    # if @departamento.save
    #   redirect_to(departamentos_path)
    # else
    #   render("new") 
    # end
  end
  

  def edit
  end

  def update 
  end

  def delete
  end

  def destroy 
  end

  private

  def departamento_params
    params.require(:departamento).permit(:numero, :edificio_id)
  end
end
