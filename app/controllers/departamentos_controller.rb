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
  end

    def edit
      @departamento = Departamento.find(params[:id])    
    end
  
    def update 
      @departamento = Departamento.find(params[:id])
      if @departamento.update(departamento_params)
        redirect_to(departamentos_path(@departamento))
      else
        render("edit")
      end
    end

    def delete
      @departamento = Departamento.find(params[:id])
    end
  
    def destroy
      @departamento = Departamento.find(params[:id])
      @departamento.destroy
      redirect_to(departamentos_path(@departamento))
    end

  private

  def departamento_params
    params.require(:departamento).permit(:numero, :edificio_id)
  end

end