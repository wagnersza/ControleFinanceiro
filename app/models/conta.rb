class Conta < ActiveRecord::Base
  attr_accessible :agencia, :descricao, :juros, :limite, :nome, :numero, :saldo, :tipo, :vencimento
end
