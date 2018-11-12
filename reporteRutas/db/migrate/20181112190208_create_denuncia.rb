class CreateDenuncia < ActiveRecord::Migration[5.2]
  def change
    create_table :denuncia do |t|
      t.string :id_ruta
      t.string :nombre
      t.string :dni
      t.string :email
      t.string :telefono
      t.text :comentario
      t.timestamp :fecha

      t.timestamps
    end
  end
end
