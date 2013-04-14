class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nome
      t.text :descricao
      t.boolean :tipo

      t.timestamps
    end
  end
end
