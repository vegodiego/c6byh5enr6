class Product < ApplicationRecord
    validates :price, presence: true 
    validates :name, presence: true
end
