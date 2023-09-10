json.extract! user, :id, :email, :firstName, :lastName, :created_at, :updated_at
json.url user_url(user, format: :json)
