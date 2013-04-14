class CreateTransacoes < ActiveRecord::Migration
  def change
    create_table :transacoes do |t|
      t.string :nome
      t.string :tipo
      t.decimal :valor
      t.boolean :pago
      t.string :comprovante
      t.date :data
      t.date :vencimento
      t.date :pagamento
      t.string :frequencia
      t.references :conta
      t.references :sub_categoria

      t.timestamps
    end
    add_index :transacoes, :conta_id
    add_index :transacoes, :sub_categoria_id
  end
end
