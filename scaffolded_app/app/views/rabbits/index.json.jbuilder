json.array!(@rabbits) do |rabbit|
  json.extract! rabbit, :id, :name, :age, :on_facebook
  json.url rabbit_url(rabbit, format: :json)
end
