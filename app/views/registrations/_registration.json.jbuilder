json.extract! registration, :id, :registrationType, :created_at, :updated_at
json.url registration_url(registration, format: :json)
