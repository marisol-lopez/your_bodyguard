class ContactsController < ApplicationController

  def create
    @contact = Contact.create!(contact_params)
  end

  private

  def contact_params
    params.permit(:name, :number)
  end

end
