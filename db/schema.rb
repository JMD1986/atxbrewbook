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

ActiveRecord::Schema.define(version: 20150810205442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "style"
    t.integer  "style_id"
    t.integer  "brewery_id"
  end

  add_index "beers", ["brewery_id"], name: "index_beers_on_brewery_id", using: :btree
  add_index "beers", ["style_id"], name: "index_beers_on_style_id", using: :btree

  create_table "breweries", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "website"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "phone_number"
  end

  create_table "opinions", force: :cascade do |t|
    t.decimal  "rating"
    t.text     "review"
    t.integer  "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "beer_id"
    t.integer  "brewery_id"
    t.integer  "user_id"
  end

  add_index "opinions", ["beer_id"], name: "index_opinions_on_beer_id", using: :btree
  add_index "opinions", ["brewery_id"], name: "index_opinions_on_brewery_id", using: :btree
  add_index "opinions", ["user_id"], name: "index_opinions_on_user_id", using: :btree

  create_table "styles", force: :cascade do |t|
    t.integer  "brewery_id"
    t.integer  "beer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name_of_style"
    t.string   "name"
  end

  add_index "styles", ["beer_id"], name: "index_styles_on_beer_id", using: :btree
  add_index "styles", ["brewery_id"], name: "index_styles_on_brewery_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "beers", "breweries"
  add_foreign_key "beers", "styles"
  add_foreign_key "opinions", "beers"
  add_foreign_key "opinions", "breweries"
  add_foreign_key "opinions", "users"
  add_foreign_key "styles", "beers"
  add_foreign_key "styles", "breweries"
end
