class Car < ApplicationRecord
    validates :make, presence: true
    validates :name, presence: true
    validates :price, presence: true
    
end