class Flight < ApplicationRecord
    has_one :from_planet, :foreign_key => "id", :class_name => "Planet", :primary_key => "planet_departure_id"
    has_one :to_planet, :foreign_key => "id", :class_name => "Planet", :primary_key => "planet_arrival_id"
end