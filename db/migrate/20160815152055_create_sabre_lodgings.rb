class CreateSabreLodgings < ActiveRecord::Migration
  def change
    create_table :sabre_lodgings do |t|
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
      t.string :airport_code

      t.timestamps null: false
    end
  end
end
