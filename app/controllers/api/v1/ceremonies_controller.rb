class Api::V1::CeremoniesController < ApplicationController
    def index
        
    end

    def show

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
