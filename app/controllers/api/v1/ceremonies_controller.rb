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

    end

    def destroy

    end

    private

    def ceremony_params
        params.require(:ceremony).permit(:location, :kind, :speaker, :narrative, :name, :cost, :death_id)
    end
end
