json.extract! band, :id, :name, :members, :first_show, :band_type, :created_at, :updated_at
json.url band_url(band, format: :json)
