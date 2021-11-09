json.extract! user, :id, :first_name, :username, :password, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
