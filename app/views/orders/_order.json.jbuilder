json.extract! order, :id, :client_id, :device_type, :device_brand, :device_model, :device_serial, :device_set, :device_condition, :malfunction, :estimated_cost, :comment, :created_at, :updated_at
json.url order_url(order, format: :json)
