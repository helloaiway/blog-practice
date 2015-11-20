json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :signature
  json.url user_url(user, format: :json)
end
