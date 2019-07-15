class ContactMailer < ApplicationMailer
	default to: "railsmailerreferral@gmail.com"
  def general_message(name, email, message)
    @name = name
    @email = email
    @message = message
  end
end

