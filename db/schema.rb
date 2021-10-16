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

ActiveRecord::Schema.define(version: 2021_10_14_175701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_lists", force: :cascade do |t|
    t.integer "contacts_awaiting"
    t.integer "contacts_made"
    t.integer "prospects_signed"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "marketing_campaigns", force: :cascade do |t|
    t.integer "length"
    t.float "final_price"
    t.float "conversion_rate"
    t.integer "prospects_reached"
    t.string "name"
    t.text "description"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prospects", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "contacted"
    t.integer "level_of_contact"
    t.string "email"
    t.string "phone_no"
    t.string "status"
    t.string "preferred_contact"
    t.string "preferred_time"
    t.text "message"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
