class Departamento < ApplicationRecord
  belongs_to :edificio

  validates :numero, presence: true , uniqueness: { case_sensitive: false}
    
  after_create :creacion_exitosa
  
  after_update :actualizacion_exitosa

  private
 
  
  def creacion_exitosa
      puts "Departamento creado con éxito"
  end
  
  def actualizacion_exitosa
      puts "Departamento actualizado con éxito"
  end

end
