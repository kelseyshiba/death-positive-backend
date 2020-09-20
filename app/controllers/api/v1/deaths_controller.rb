class Api::V1::DeathsController < ApplicationController

    def index
        deaths = Death.all
        render json: DeathSerializer.new(deaths)
    end

    def show
        death = Death.find(params[:id])
        render json: DeathSerializer.new(death)
    end

    def create

    end

    def destroy

    end

    private

    def death_params

    end
end
