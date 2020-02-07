class ReviewsController < ApplicationController

    def index
        reviews = Review.select{|review| review.plant_id == params[:plant_id]}
        render json: reviews, except: [:created_at, :updated_at]
    end 

    def show
        reviews = Review.select{|review| review.plant_id == params[:plant_id]}
        render json: reviews, except: [:created_at, :updated_at]
    end 

    def create 
         review = Review.create(title: params[:title], body: params[:body], user_id: params[:user_id], plant_id: params[:plant_id] )
         render json: review, except: [:created_at, :updated_at]
    end 
end
