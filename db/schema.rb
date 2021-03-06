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

ActiveRecord::Schema.define(version: 20160311102628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friends", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "logobrand"
    t.string   "logobrand_cache"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "progress"
    t.string   "logolang"
    t.string   "logolang_cache"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string   "name"
    t.string   "place"
    t.datetime "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "flyer"
    t.string   "flyer_cache"
    t.string   "url"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "client"
    t.string   "client_url"
    t.text     "description"
    t.integer  "progress"
    t.string   "visual"
    t.string   "visual_cache"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "lang_id1"
    t.string   "lang_id2"
    t.string   "lang_id3"
    t.string   "lang_id4"
    t.string   "lang_id5"
    t.string   "lang_id6"
  end

  create_table "subscribers", force: :cascade do |t|
    t.string   "email"
    t.boolean  "subscribe",  default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.boolean  "admin",                  default: false
    t.string   "nom"
    t.string   "prenom"
    t.text     "comment"
    t.boolean  "subscribe",              default: true
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
