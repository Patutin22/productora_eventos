json.extract! concert, :id, :date, :place, :assistants, :duration, :band_id, :created_at, :updated_at
json.url concert_url(concert, format: :json)
