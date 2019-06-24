class ProfilesController < ApplicationController

	def index
      @profiles=Profile.all
	end

	def new
		@profile = Profile.new
	end

		def show
		@profile=Profile.find(params[:id])
	end

	def create 
		@profile=Profile.new(user_params)
		if @profile.save
			redirect_to static_pages_home, notice:
			"welcome #{@profile.userid}! to reviewApp"
		else 
			render 'new'
		end
	end

		private
	def user_params
		params.require(:profile).permit(:userid, :email, :password, :name, :dob, :address, :city, :country, :image, :password_confirmation)
	end

end

end
