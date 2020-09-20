class Api::V1::ContactsController < ApplicationController
    def index
        contacts = Contact.all
        render json: ContactSerializer.new(contacts)
    end
end
