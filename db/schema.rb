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

ActiveRecord::Schema.define(version: 20141206121853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meals", force: true do |t|
    t.integer  "user_id",                  null: false
    t.datetime "eaten_at",                 null: false
    t.integer  "calories",                 null: false
    t.string   "description", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meals", ["user_id", "eaten_at"], name: "index_meals_on_user_id_and_eaten_at", order: {"eaten_at"=>:desc}, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",              default: "",   null: false
    t.string   "encrypted_password", default: "",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "daily_calories",     default: 2000, null: false
    t.string   "auth_token"
  end

  add_index "users", ["auth_token"], name: "index_users_on_auth_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
