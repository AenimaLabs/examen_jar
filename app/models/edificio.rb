class Edificio < ApplicationRecord
    has_many :departamentos, dependent: :destroy
    validates :nombre, :direccion, :ciudad, presence: true , uniqueness: { case_sensitive: false}
    
  after_create :creacion_exitosa
  
  after_update :actualizacion_exitosa

  private
  
  def creacion_exitosa
      puts "Edificio creado con éxito"
  end
  
  def actualizacion_exitosa
      puts "Edificio actualizado con éxito"
  end
end
