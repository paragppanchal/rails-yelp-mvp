class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    #We will need a Restaurant to set the id.

    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant_id = @restaurant.id
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def index
    @reviews = Review.where(restaurant_id: params[:restaurant_id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
