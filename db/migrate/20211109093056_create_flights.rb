class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.date :flightDate
      t.string :origin
      t.string :destination
      t.text :seats
      t.integer :plane_id

      t.timestamps
    end
  end
end
