class ContactsController < ApplicationController

	def new 
		@contact = Contact.new(params[:contact])
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		respond_to do |format|
			if @contact.deliver
				@contact = Contact.new
				format.html { render 'new'}
				format.js { flash.now[:success] = @message = "Message sent" }
			else 

	        format.html { render 'new'}
			format.js { flash.now[:error] = @message = "Message not sent" }

	end 
end 


		
    end
  
end 
