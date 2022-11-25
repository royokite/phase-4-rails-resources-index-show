class BirdsController < ApplicationController
    def index
        render json: Bird.all, only: [:id, :name, :species]
    end

    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: {error: "Bird not found"}, status: :not_found
        end
    end
end
