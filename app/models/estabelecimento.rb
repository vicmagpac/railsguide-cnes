class Estabelecimento < ApplicationRecord
    validates :nome, presence: true
    validates :cnes, presence: true, length: { minimum: 5 }
end
