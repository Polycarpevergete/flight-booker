class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :planet_departure_id
      t.integer :planet_arrival_id
      t.datetime :start_datetime
      t.string :flight_duration

      t.timestamps
    end
  end
end
