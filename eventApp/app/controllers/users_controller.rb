class UsersController < ApplicationController

		def index
      @users=User.all
	end

	def new
		@user = User.new
	end

		def show
		@user = User.find(params[:id])
	end

	def create 
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path, notice:
			"welcome #{@user.userid}! to reviewApp"
		else 
			render 'new'
		end
	end
    
    		private
	def user_params
		params.require(:user).permit(:userid, :email, :password, :registered, :password_confirmation)
	end


end
