json.extract! profile, :id, :image, :user_id, :first_name, :last_name, :email, :created_at, :updated_at
json.url profile_url(profile, format: :json)
