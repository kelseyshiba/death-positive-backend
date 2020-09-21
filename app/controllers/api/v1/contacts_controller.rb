class Api::V1::ContactsController < ApplicationController
    before_action :set_ceremony

    def index
        contacts = @ceremony.contacts
        render json: ContactSerializer.new(contacts)
    end

    
    private
    def set_ceremony
        @ceremony = Ceremony.find(params[:ceremony_id])
    end

    def contact_params
        params.require(:contact).permit(:first_name, :last_name, :id, :ceremony_id, :phone, :email)
    end
end
