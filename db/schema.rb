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

ActiveRecord::Schema.define(version: 2021_05_05_231952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "new_property_for_orgs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "newshifts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.integer "break_length"
    t.integer "org"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["user_id"], name: "index_newshifts_on_user_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.decimal "hourly_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orgshifts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "start", null: false
    t.datetime "end", null: false
    t.integer "break_length", null: false
    t.integer "org", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orgshifts_on_user_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.integer "break_length"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "org_id"
    t.integer "org"
    t.index ["user_id"], name: "index_shifts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email_address"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organisation_id"
  end

  add_foreign_key "newshifts", "users"
  add_foreign_key "orgshifts", "users"
  add_foreign_key "shifts", "users"
end
