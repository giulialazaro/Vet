class Raca < ApplicationRecord
    validates  :descricao , :presence => { :message => "Descrição Obrigatória!"}  
end
