json.extract! ferry, :id, :email_address, :itinerary_reference, :reference_term, :name, :confirmation_number, :item_name, :start_date_time, :end_date_time, :city, :state, :country, :street_address, :zip_code, :lat, :long, :created_at, :updated_at
json.url ferry_url(ferry, format: :json)