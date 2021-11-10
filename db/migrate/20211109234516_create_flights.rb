class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :plane_id
      t.date :departure_date
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
