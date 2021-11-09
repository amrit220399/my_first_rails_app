json.extract! vehicle, :id, :model, :manufacturer, :date_of_purchase, :owner_id, :rc_number, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
