class Cidade < ApplicationRecord
    validates  :descricao , :presence => { :message => "Descrição Obrigatória!"}  
end
