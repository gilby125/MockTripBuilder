class AirPost < ActiveRecord::Base
    validates :email_address, presence: true
  validates :itinerary_reference, presence: true
  validates :name, presence: true
  validates :airline_code, presence: true
  validates :confirmation_number, presence: true
  validates :flight_number, presence: true
  validates :arrival_date_time, presence: true
  validates :departure_date_time, presence: true
  validates :departure_airport, presence: true
  validates :arrival_airport , presence: true
end
