class ReviewsController < ApplicationController

 def new
    @review = Review.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = Restaurant
    review.save
    redirect_to restaurant_path(@review)
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
