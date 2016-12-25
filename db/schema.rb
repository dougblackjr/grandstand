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

ActiveRecord::Schema.define(version: 20161225020211) do

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "upload"
    t.string   "mediatype"
    t.string   "videoupload"
    t.string   "audioupload"
    t.text     "description"
  end

  add_index "media", ["user_id"], name: "index_media_on_user_id"

  create_table "setlists", force: :cascade do |t|
    t.string   "title"
    t.date     "date"
    t.integer  "user_id"
    t.integer  "song_id"
    t.integer  "medium_id"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "setlists", ["medium_id"], name: "index_setlists_on_medium_id"
  add_index "setlists", ["song_id"], name: "index_setlists_on_song_id"
  add_index "setlists", ["user_id"], name: "index_setlists_on_user_id"

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.string   "theme"
    t.integer  "tempo"
    t.string   "key"
    t.integer  "CCLISongNo"
    t.string   "scripture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "author"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
