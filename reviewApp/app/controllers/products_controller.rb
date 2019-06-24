class ProductsController < ApplicationController
	before_action :authorize, :only => [:create]
	def index
	@products=Product.all
	end

	def new
	end 

	def show
		@product=Product.find(params[:id])
    end

	def create
		#render plain: params[:product].inspect
		@product=Product.new(product_params)
		if @product.save
		redirect_to products_path, notice:
		"you've added a product"
	else
		redirect_to products_path, alert:
		"you need to be signed in to create a product"
	end
  end 

	private
	def product_params
		params.require(:product).permit(:productName, :brand, :cost, :category, :date, :description, :image)
	end

end
