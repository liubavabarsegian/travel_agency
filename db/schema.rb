# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_28_122102) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.date "birthday_date"
    t.boolean "has_member_card"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "airway_company"
    t.datetime "departure_time"
    t.integer "price"
    t.boolean "meal_included"
    t.integer "flight_duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "departure_airport_id"
    t.bigint "arrival_airport_id"
    t.index ["arrival_airport_id"], name: "index_flights_on_arrival_airport_id"
    t.index ["departure_airport_id"], name: "index_flights_on_departure_airport_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.boolean "has_pool"
    t.integer "number_of_stars"
    t.boolean "cleaning_included"
    t.integer "price_for_a_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "number_of_people"
    t.datetime "order_time"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.date "departure_date"
    t.date "arrival_date"
    t.string "meal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "departure_flight_id"
    t.bigint "arrival_flight_id"
    t.index ["arrival_flight_id"], name: "index_trips_on_arrival_flight_id"
    t.index ["departure_flight_id"], name: "index_trips_on_departure_flight_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.date "birthday_date"
    t.integer "salary"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flights", "flights", column: "arrival_airport_id"
  add_foreign_key "flights", "flights", column: "departure_airport_id"
  add_foreign_key "trips", "flights", column: "arrival_flight_id"
  add_foreign_key "trips", "flights", column: "departure_flight_id"
end
