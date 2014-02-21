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

ActiveRecord::Schema.define(version: 20140221043913) do

  create_table "ice_creams", force: true do |t|
    t.integer  "store_id"
    t.string   "store"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_ice_creams", force: true do |t|
    t.integer  "store_id"
    t.string   "store"
    t.integer  "ice_cream_id"
    t.string   "ice_cream"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "ice_cream_brands"
    t.string   "flavor"
    t.string   "description"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
