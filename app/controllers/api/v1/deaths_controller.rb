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
        death = Death.new(death_params)
        if death.save
            render json: DeathSerializer.new(death)
        else
            render json: {error: 'Death not valid.'}
        end
    end

    def destroy
        death = Death.find_by_id(params[:id])
        death.destroy
        render json: DeathSerializer.new(death)
    end

    private

    def death_params
        params.require(:death).permit(:person, :date)
    end
end
