json.extract! error, :id, :type, :severity, :description, :created_at, :updated_at
json.url error_url(error, format: :json)
