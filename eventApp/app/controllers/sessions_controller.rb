class SessionsController < ApplicationController

	def index
		redirect_to root_path, notice:
		"welcome #{@user.userid}! to eventsApp"
	end

	def new
	end

	def create
		user=User.find_by_userid(params[:userid])
		if user && user.authenticate(params[:password])
			session[:user_id]=user.id
			redirect_to root_path
		else
			render 'new', alert:
			"invalid username and/or password"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice:
		"you have successfully logged out"
	end
		
end
