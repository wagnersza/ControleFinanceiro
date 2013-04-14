class SubCategoria < ActiveRecord::Base
  belongs_to :categoria
  attr_accessible :descricao, :nome
end
