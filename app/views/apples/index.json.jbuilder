json.array!(@apples) do |apple|
  json.extract! apple, :id, :name, :diameter, :height, :is_red
  json.url apple_url(apple, format: :json)
end
