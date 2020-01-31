class ReviewsController < ApplicationController

    def index
        reviews = Review.all 
        render json: reviews, except: [:created_at, :updated_at]
    end 

    def show
        review = Review.find(id: params[:id])
        render json: review, except: [:created_at, :updated_at]
    end 

    def create 
         review = Review.create(title: params[:title], body: params[:body], user_id: params[:user_id], plant_id: params[:plant_id] )
         render json: review, except: [:created_at, :updated_at]
    end 
end
