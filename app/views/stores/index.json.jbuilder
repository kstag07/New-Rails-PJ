json.array!(@stores) do |store|
  json.extract! store, :id, :name, :address, :ice_cream_brands, :flavor, :description, :text
  json.url store_url(store, format: :json)
end
