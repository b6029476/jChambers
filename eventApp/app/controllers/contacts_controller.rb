class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]


  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit


  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: 'Contact was successfully submitted.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:fname, :email, :address, :subject, :reason)
    end
end
