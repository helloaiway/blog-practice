json.array!(@messages) do |message|
  json.extract! message, :id, :name, :user, :thumb, :content, :follows
  json.url message_url(message, format: :json)
end
