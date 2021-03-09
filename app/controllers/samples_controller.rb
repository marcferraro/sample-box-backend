class SamplesController < ApplicationController

    def index
        samples = Sample.all

        render json: samples
    end

end
