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

ActiveRecord::Schema.define(version: 20140723085835) do

  create_table "areas", force: true do |t|
    t.integer "pref_id"
    t.string  "name"
  end

  add_index "areas", ["pref_id"], name: "index_areas_on_pref_id", using: :btree

  create_table "categories", force: true do |t|
    t.string  "name"
    t.string  "name_kana"
    t.integer "parent1"
    t.integer "parent2"
    t.string  "similar"
  end

  create_table "prefs", force: true do |t|
    t.string "name"
  end

  create_table "rating_votes", id: false, force: true do |t|
    t.integer  "rating_id"
    t.string   "user"
    t.datetime "created_on"
  end

  create_table "ratings", force: true do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.integer  "total"
    t.integer  "food"
    t.integer  "service"
    t.integer  "atmosphere"
    t.integer  "cost_performance"
    t.string   "title"
    t.string   "body"
    t.integer  "purpose"
    t.datetime "created_on"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "property"
    t.string   "alphabet"
    t.string   "name_kana"
    t.integer  "pref_id"
    t.integer  "area_id"
    t.integer  "station_id1"
    t.integer  "station_time1"
    t.integer  "station_distance1"
    t.integer  "station_id2"
    t.integer  "station_time2"
    t.integer  "station_distance2"
    t.integer  "station_id3"
    t.integer  "station_time3"
    t.integer  "station_distance3"
    t.integer  "category_id1"
    t.integer  "category_id2"
    t.integer  "category_id3"
    t.integer  "category_id4"
    t.integer  "category_id5"
    t.string   "zip"
    t.string   "address"
    t.decimal  "north_latitude",    precision: 9, scale: 6
    t.decimal  "east_longitude",    precision: 9, scale: 6
    t.string   "description"
    t.string   "purpose"
    t.string   "open_morning"
    t.string   "open_lunch"
    t.string   "open_late"
    t.integer  "photo_count"
    t.integer  "special_count"
    t.integer  "menu_count"
    t.integer  "fan_count"
    t.integer  "access_count"
    t.string   "closed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["area_id"], name: "index_restaurants_on_area_id", using: :btree
  add_index "restaurants", ["pref_id"], name: "index_restaurants_on_pref_id", using: :btree

  create_table "stations", force: true do |t|
    t.integer "pref_id"
    t.string  "name"
    t.string  "name_kana"
    t.string  "property"
  end

  add_index "stations", ["pref_id"], name: "index_stations_on_pref_id", using: :btree

end
