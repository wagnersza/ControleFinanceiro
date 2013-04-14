class Transacao < ActiveRecord::Base
  belongs_to :conta
  belongs_to :sub_categoria
  attr_accessible :comprovante, :data, :frequencia, :nome, :pagamento, :pago, :tipo, :valor, :vencimento
end
