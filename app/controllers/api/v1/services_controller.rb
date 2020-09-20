class Api::V1::ServicesController < ApplicationController
    def index
        services = Service.all
        render json: ServiceSerializer.new(services)
    end
end
