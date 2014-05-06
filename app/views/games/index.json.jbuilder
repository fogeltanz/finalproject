json.array!(@games) do |game|
  json.extract! game, :gametime
  json.url game_url(game, format: :json)
end