class CartPlantsController < ApplicationController

    def index
        cart_plants = CartPlant.all 
        
        render json: cart_plants, except: [:created_at, :updated_at]
    end 

    def create 
        
        cart_plant = CartPlant.create(cart_id: params[:cart_id], plant_id: params[:plant_id])
        cart = Cart.find(params[:cart_id])
        user = cart.user

        # render json: cart_plant, except: [:created_at, :updated_at]
        
        render json: user, :include => {
            carts: {
                except: [:created_at, :updated_at], 
                methods: :total, 
                include: {
                    cart_plants:{ 
                        include: :plant
                }},
            }
        }, except: [:created_at, :updated_at]
    end 
   
    def destroy 
        cart_plant = CartPlant.find(params[:id])
        user = cart_plant.cart.user
        cart_plant.destroy
        
        render json: user, :include => {
            carts: {
                except: [:created_at, :updated_at], 
                methods: :total, 
                include: {
                    cart_plants:{ 
                        include: :plant
                }},
            }
        }, except: [:created_at, :updated_at]
    end 

end
