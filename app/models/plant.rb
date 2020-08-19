class Plant < ApplicationRecord
    has_many :cart_plants, dependent: :destroy
    has_many :carts, through: :cart_plants
    has_many :reviews, dependent: :destroy
end
