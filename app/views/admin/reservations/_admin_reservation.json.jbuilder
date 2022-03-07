json.extract! admin_reservation, :id, :start_date, :end_date, :firstname, :lastname, :email, :created_at, :updated_at
json.url admin_reservation_url(admin_reservation, format: :json)
