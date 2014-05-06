json.array!(@tournaments) do |tournament|
  json.extract! tournament, :name, :description
  json.url tournament_url(tournament, format: :json)
end