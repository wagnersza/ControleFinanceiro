class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.string :nome
      t.integer :numero
      t.integer :agencia
      t.text :descricao
      t.string :tipo
      t.decimal :juros
      t.decimal :saldo
      t.decimal :limite
      t.date :vencimento

      t.timestamps
    end
  end
end
