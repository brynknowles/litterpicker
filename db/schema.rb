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

ActiveRecord::Schema.define(version: 2021_02_08_212451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cleanups", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "category"
    t.string "image"
    t.date "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "comment"
    t.integer "cheer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_cleanups", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "cleanup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cleanup_id"], name: "index_user_cleanups_on_cleanup_id"
    t.index ["user_id"], name: "index_user_cleanups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "avatar"
    t.string "username"
    t.string "password_digest"
    t.integer "age"
    t.string "catchphrase"
    t.integer "park_badge"
    t.integer "playground_badge"
    t.integer "shoreline_badge"
    t.integer "trail_badge"
    t.integer "earth_steward_badge"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_cleanups", "cleanups"
  add_foreign_key "user_cleanups", "users"
end
