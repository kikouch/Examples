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

ActiveRecord::Schema.define(version: 20150721144434) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "rabbit_id"
    t.string   "facebook_status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "rabbits", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.boolean  "on_facebook"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "table_user_groups", force: :cascade do |t|
    t.string  "field_one"
    t.integer "field_two"
  end

end