# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160815152326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "zip_code"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "air_posts", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "name"
    t.string   "airline_code"
    t.string   "confirmation_number"
    t.string   "flight_number"
    t.string   "arrival_date_time"
    t.string   "departure_date_time"
    t.string   "departure_airport"
    t.string   "arrival_airport"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "gt_site_name"
    t.string   "gt_sub_site_name"
  end

  create_table "attractions", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "zip_code"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "car_rentals", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "zip_code"
    t.string   "lat"
    t.string   "long"
    t.string   "context"
    t.string   "reference"
    t.string   "start_date_two"
    t.string   "end_date_two"
    t.string   "context_two"
    t.string   "reference_two"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "cruises", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "zip_code"
    t.string   "lat"
    t.string   "long"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "ferries", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "zip_code"
    t.string   "lat"
    t.string   "long"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "food_drinks", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "zip_code"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "ground_transportations", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "zip_code"
    t.string   "lat"
    t.string   "long"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "manual_lodgings", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "airport_code"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "zip_code"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "name"
    t.string   "airline_code"
    t.string   "confirmation_number"
    t.string   "flight_number"
    t.string   "arrival_date_time"
    t.string   "departure_date_time"
    t.string   "departure_airport"
    t.string   "arrival_airport"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "rails", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "zip_code"
    t.string   "lat"
    t.string   "long"
    t.string   "context"
    t.string   "reference"
    t.string   "start_date_two"
    t.string   "end_date_two"
    t.string   "context_two"
    t.string   "reference_two"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "sabre_lodgings", force: :cascade do |t|
    t.string   "email_address"
    t.string   "itinerary_reference"
    t.string   "reference_term"
    t.string   "name"
    t.string   "confirmation_number"
    t.string   "item_name"
    t.string   "start_date_time"
    t.string   "end_date_time"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "street_address"
    t.string   "airport_code"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
