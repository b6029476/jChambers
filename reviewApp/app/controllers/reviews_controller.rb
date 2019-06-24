class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authorize, :only => [:create]
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end
 
  def edit
  end

  def create
     @review = Review.new(review_params)
     #@review.userid = current_user.id

    if @review.save
      redirect_to @product
    else 
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end
    def review_params
      params.require(:review).permit(:author, :rating, :reviewtext, :reviewdate, :userid, :image_file_path, :product_id)
    end
end
