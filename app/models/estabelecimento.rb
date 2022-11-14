class Estabelecimento < ApplicationRecord
    has_many :comments

    validates :nome, presence: true
    validates :cnes, presence: true, length: { minimum: 5 }
end
