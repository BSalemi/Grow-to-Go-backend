class PlantsController < ApplicationController
    def index 
        plants = Plant.all 
        
        render json: plants, except: [:created_at, :updated_at]
    end 

    def show
        plant = Plant.find_by(id: params[:id])
        reviews = plant.reviews
        if plant && reviews
            render json: plant, :include => {
                reviews: {
                    except: [:created_at, :updated_at]
                }
            }, except: [:created_at, :updated_at]
        elsif plant 
            render json: plant, except: [:created_at, :updated_at]
        else 
            render json: {message: "Plant not found."}
        end 
    end 


end
