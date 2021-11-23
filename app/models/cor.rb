class Cor < ApplicationRecord
    validates  :descricao , :presence => { :message => "Descrição Obrigatória!"}  
end
