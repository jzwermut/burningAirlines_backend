class FlightsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :flights_users, :id => false do |t|
      t.integer :user_id
      t.integer :flight_id
      t.timestamps
    end
  end
end
