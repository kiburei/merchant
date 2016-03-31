json.array!(@addresses) do |address|
  json.extract! address, :id, :line1, :line2, :city, :phone, :joint, :user_id
  json.url address_url(address, format: :json)
end
