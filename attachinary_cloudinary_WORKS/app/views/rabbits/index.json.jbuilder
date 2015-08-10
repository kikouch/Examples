json.array!(@rabbits) do |rabbit|
  json.extract! rabbit, :id, :name, :building_picture
  json.url rabbit_url(rabbit, format: :json)
end
