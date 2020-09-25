class Api::V1::CeremoniesController < ApplicationController
    def index
        ceremonies = Ceremony.all
        render json: CeremonySerializer.new(ceremonies)
    end

    def show
        ceremony = Ceremony.find_by_id(params[:id])
        render json: CeremonySerializer.new(ceremony)
    end

    def create
        ceremony = Ceremony.new(ceremony_params)
        death = Death.find_by_id(params[:ceremony][:death_id])
        if ceremony.save
            render json: DeathSerializer.new(death)
        else
            render json: {error: 'Cannot create this ceremony'}
        end
    end

    def destroy

    end

    private

    def ceremony_params
        params.require(:ceremony).permit(:location_name, :address, :city, :state, :zip, :kind, :speaker, :narrative, :name, :cost, :death_id)
    end
end
