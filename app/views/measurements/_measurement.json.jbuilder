json.extract! measurement, :id, :name, :unit, :upper_limit, :lower_limit, :created_at, :updated_at
json.url measurement_url(measurement, format: :json)
