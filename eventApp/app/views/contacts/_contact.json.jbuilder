json.extract! contact, :id, :fname, :email, :address, :subject, :reason, :created_at, :updated_at
json.url contact_url(contact, format: :json)
