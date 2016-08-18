class CreateCruises < ActiveRecord::Migration
  def change
    create_table :cruises do |t|
      t.string :email_address
      t.string :itinerary_reference
      t.string :reference_term
      t.string :name
      t.string :confirmation_number
      t.string :item_name
      t.string :start_date_time
      t.string :end_date_time
      t.string :city
      t.string :state
      t.string :country
      t.string :street_address
      t.string :zip_code
      t.string :lat
      t.string :long

      t.timestamps null: false
    end
  end
end
