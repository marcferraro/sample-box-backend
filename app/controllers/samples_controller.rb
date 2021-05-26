class SamplesController < ApplicationController

    def index
        samples = Sample.all

        render json: samples
    end

    def create
        sample = Sample.new(title: params[:title], user_id: params[:user_id], date: params[:date], note: params[:note], shared: params[:shared])
        byebug
        sample.sample_data_uri = params[:sample]
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

    def destroy
        sample = Sample.find_by(id: params[:id])
        if sample.destroy
            render json: {message: "Sample deleted."}
        else
            render json: {error: "Sample unable to be deleted or not found."}
        end
    end

    private

    # def sample_params
    #     params.permit(:title, :date, :note, :shared, :user_id, :sample)
    # end

    def update_params
        # params.except(:id)
        params.except(:id).permit(:title, :date, :note, :shared)
    end

end
