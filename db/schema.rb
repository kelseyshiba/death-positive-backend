# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_20_034338) do

  create_table "ceremonies", force: :cascade do |t|
    t.string "location_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "kind"
    t.string "speaker"
    t.text "narrative"
    t.string "name"
    t.float "cost"
    t.integer "death_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["death_id"], name: "index_ceremonies_on_death_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.integer "ceremony_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ceremony_id"], name: "index_contacts_on_ceremony_id"
  end

  create_table "deaths", force: :cascade do |t|
    t.string "person"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "house"
    t.text "inventory"
    t.text "communications"
    t.string "certificate"
    t.string "will"
    t.integer "death_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["death_id"], name: "index_services_on_death_id"
  end

  add_foreign_key "ceremonies", "deaths"
  add_foreign_key "contacts", "ceremonies"
  add_foreign_key "services", "deaths"
end
