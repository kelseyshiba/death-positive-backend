class Api::V1::ListsController < ApplicationController
    def index
        lists = List.all 
        render json: ListSerializer.new(lists)
    end
end
