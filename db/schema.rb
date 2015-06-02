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

ActiveRecord::Schema.define(version: 20150602011949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
  end

  create_table "conversations_users", id: false, force: :cascade do |t|
    t.integer "conversation_id"
    t.integer "user_id"
  end

  create_table "discussions", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discussions", ["recipient_id"], name: "index_discussions_on_recipient_id", using: :btree
  add_index "discussions", ["sender_id"], name: "index_discussions_on_sender_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "conversation_id"
  end

  create_table "texts", force: :cascade do |t|
    t.text     "body"
    t.integer  "discussion_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "texts", ["discussion_id"], name: "index_texts_on_discussion_id", using: :btree
  add_index "texts", ["user_id"], name: "index_texts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.text     "instruments"
    t.text     "interests"
    t.text     "website"
    t.text     "image"
    t.date     "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.float    "lat"
    t.float    "lon"
    t.string   "ip_address"
  end

  add_foreign_key "texts", "discussions"
  add_foreign_key "texts", "users"
end
