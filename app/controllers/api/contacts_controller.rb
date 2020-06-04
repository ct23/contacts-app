class Api::ContactsController < ApplicationController
  def show
    @contact = Contact.find_by(id: params[:id])  # single contact hash
    render "one_contact.json.jb"
  end
  def index
    @contacts = Contact.all    # array of contact hashes
    render "all_contacts.json.jb"
  end
  def create
    @contact = Contact.create(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio]
    )
    render 'one_contact.json.jb'
  end
  def update
    @contact = Contact.find_by(id: params[:id])
    # Update existing values for found contact, use || to provide default values if none provided
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.bio = params[:bio] || @contact.bio
    @contact.save
    render 'one_contact.json.jb'
  end
  def destroy
    id = params[:id]
    @contact = Contact.find_by(id: id)
    @contact.destroy
    render json: {message: "Contact " + id + " has been erased."}
  end
end