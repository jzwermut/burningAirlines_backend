json.extract! flight, :id, :flightDate, :origin, :destination, :seats, :created_at, :updated_at
json.url flight_url(flight, format: :json)
