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

ActiveRecord::Schema.define(version: 20180215202210) do

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "visa"
    t.date     "entry_date"
    t.boolean  "fast_track"
    t.string   "email"
    t.string   "name"
    t.string   "phone"
    t.string   "speed"
    t.text     "comment"
    t.integer  "QTY"
    t.integer  "amount"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passports", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "number"
    t.date     "finish_date"
    t.date     "start_date"
    t.date     "birtday"
    t.string   "gender"
    t.string   "nationallity"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "passports", ["order_id"], name: "index_passports_on_order_id"

  create_table "proc_speeds", force: :cascade do |t|
    t.text     "short_desc"
    t.text     "long_desc"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purposes", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visas", force: :cascade do |t|
    t.integer  "purpose_id"
    t.string   "title"
    t.text     "short_desc"
    t.text     "long_desc"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "visas", ["purpose_id"], name: "index_visas_on_purpose_id"

end
