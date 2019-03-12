class FlightsController < ApplicationController
    def index
        @flights = Flight.all
    end

    def create
        @flight = Flight.new
    end


private

    def flight_params
        params.require(:flight).permit(:planet_departure_id, :planet_arrival_id, :start_datetime, :duration)
    end
end
