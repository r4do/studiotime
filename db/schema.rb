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

ActiveRecord::Schema.define(version: 2019_02_14_093253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "studios", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name", default: "", null: false
    t.text "details", default: "", null: false
    t.text "minimum_booking", default: "", null: false
    t.text "hours", default: "", null: false
    t.text "past_clients"
    t.text "audio_samples"
    t.text "amenities"
    t.text "equipment"
    t.text "rules"
    t.string "location", default: "", null: false
    t.text "venue"
    t.float "price", default: 0.0, null: false
    t.boolean "engineer_included", default: false, null: false
    t.string "images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location"], name: "index_studios_on_location"
    t.index ["name"], name: "index_studios_on_name"
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "bio"
    t.string "website_url"
    t.string "facebook_url"
    t.string "twitter_handle"
    t.string "instagram_handle"
    t.string "straming_platform_url"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "studios", "users"
end
