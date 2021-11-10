json.extract! flight, :id, :plane_id, :departure_date, :origin, :destination, :created_at, :updated_at
json.url flight_url(flight, format: :json)
