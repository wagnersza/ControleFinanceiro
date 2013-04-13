class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.string :nome
      t.string :tipo
      t.decimal :juros
      t.decimal :saldo
      t.decimal :limite
      t.date :vencimento
      t.timestamps
    end
  end
end
