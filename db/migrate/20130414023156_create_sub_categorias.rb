class CreateSubCategorias < ActiveRecord::Migration
  def change
    create_table :sub_categorias do |t|
      t.string :nome
      t.text :descricao
      t.references :categoria

      t.timestamps
    end
    add_index :sub_categorias, :categoria_id
  end
end
