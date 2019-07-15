json.extract! event, :id, :ename, :etype, :location, :city, :price, :date, :time, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
