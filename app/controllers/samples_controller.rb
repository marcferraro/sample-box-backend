class SamplesController < ApplicationController

    def index
        samples = Sample.all

        render json: samples
    end

    def create
        # byebug
        sample = Sample.new(sample_params)
        if sample.save
            render json: sample
        else
            render json: {error: "Sample invalid."}
        end
    end

    def update
        # byebug
        sample = Sample.find_by(id: params[:id])
        if sample.update(update_params)
            sample.save
            render json: sample
        else
            render json: {error: "Sample edits invalid."}
        end
    end

    private

    def sample_params
        params.permit(:title, :date, :note, :shared, :user_id)
    end

    def update_params
        # params.except(:id)
        params.except(:id).permit(:title, :date, :note, :shared)
    end

end
