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

ActiveRecord::Schema.define(version: 2021_11_28_084657) do

  create_table "activity_details", force: :cascade do |t|
    t.string "name"
    t.integer "hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "haumanas", force: :cascade do |t|
    t.string "name"
    t.integer "seconds_balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hour_entries", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "type_of_entry"
    t.integer "activity_detail_id"
    t.integer "hours"
    t.integer "minutes"
    t.text "notes"
    t.integer "haumana_id"
    t.index ["activity_detail_id"], name: "index_hour_entries_on_activity_detail_id"
    t.index ["haumana_id"], name: "index_hour_entries_on_haumana_id"
  end

  add_foreign_key "hour_entries", "haumanas"
end
