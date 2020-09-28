class User < ApplicationRecord
    has_many :carts
    has_many :cart_plants
    has_many :plants, through: :cart_plants
    has_many :reviews

    validates(:name, :presence => true, :length => {:within => 3..12, :wrong_length => "Username must be between three and twelve characters long."})
    validates(:email, :presence => true, :uniqueness => true)
end
