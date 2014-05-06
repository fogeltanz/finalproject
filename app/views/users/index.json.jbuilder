json.array!(@users) do |user|
  json.extract! user, :name, :nickname, :email, :password_digest
  json.url user_url(user, format: :json)
end