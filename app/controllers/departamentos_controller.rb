class DepartamentosController < ApplicationController
  def index
    @departamentos = Departamento.order(numero_departamento: :desc)
  end

  def show
    @departamento = Departamento.find(params[:id])
  end

  def new
  end

  def create 
  end

  def edit
  end

  def update 
  end

  def delete
  end

  def destroy 
  end
end
