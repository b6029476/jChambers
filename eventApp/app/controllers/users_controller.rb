class UsersController < ApplicationController

		def index
      @users=User.all
	end

	def new
		@user = User.new
	end

	def create 
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to new_profile_path, notice:
			"welcome #{@user.userid}! to reviewApp please login with your newly created credentials"
		else 
			render 'new'
		end
	end
    
    		private
	def user_params
		params.require(:user).permit(:userid, :email, :password, :registered, :password_confirmation)
	end


end
