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

    private

    def sample_params
        params.permit(:title, :date, :note, :shared, :user_id)
    end

end
