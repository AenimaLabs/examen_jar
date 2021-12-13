class CreateDepartamentos < ActiveRecord::Migration[6.1]
  def change
    create_table :departamentos do |t|
      t.integer :numero
      t.references :edificio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
