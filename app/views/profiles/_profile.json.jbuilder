json.extract! profile, :id, :user_id, :name, :picture, :bio, :country, :created_at, :updated_at
json.url profile_url(profile, format: :json)
