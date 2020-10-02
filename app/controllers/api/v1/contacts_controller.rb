class Api::V1::ContactsController < ApplicationController
    before_action :set_ceremony

    def index
        contacts = @ceremony.contacts
        render json: ContactSerializer.new(contacts)
    end

    def create
        contact = Contact.new(contact_params)
        @ceremony.contacts << contact
         if contact.save
            render json: ContactSerializer.new(contact)
         else
            render json: {error: 'Contact not created'}
         end

    end

    def show
        contact = Contact.find_by_id(params[:id])
        render json: ContactSerializer.new(contact)
    end

    def update
        contact = Contact.find_by_id(params[:id])
        contact.update(contact_params)
        render json: ContactSerializer.new(contact)
    end

    def destroy
        contact = Contact.find_by_id(params[:id])
        contact.destroy
        render json: ContactSerializer.new(contact)
    end
    
    private
    def set_ceremony
        @ceremony = Ceremony.find(params[:ceremony_id])
    end

    def contact_params
        params.require(:contact).permit(:id, :first_name, :last_name, :ceremony_id, :phone, :email)
    end
end
