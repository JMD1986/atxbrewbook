json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :name, :location, :website, :phone_number
  json.url brewery_url(brewery, format: :json)
end
