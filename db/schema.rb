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

ActiveRecord::Schema.define(version: 20151022211550) do

  create_table "letters", force: :cascade do |t|
    t.string   "recipient_name"
    t.string   "recipient_email"
    t.text     "recipient_address"
    t.string   "sender_name"
    t.string   "sender_email"
    t.text     "sender_address"
    t.text     "body"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "sent"
    t.string   "rep_id"
    t.string   "sender_city"
    t.string   "sender_state"
    t.string   "sender_zip"
    t.float    "latitude"
    t.float    "longitude"
  end

end
