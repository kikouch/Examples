json.array!(@rabbits) do |rabbit|
  json.extract! rabbit, :id, :title, :body, :age
  json.url rabbit_url(rabbit, format: :json)
end
