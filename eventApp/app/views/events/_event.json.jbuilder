json.extract! event, :id, :ename, :etype, :location, :city, :tickets, :edate, :etime, :description, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
