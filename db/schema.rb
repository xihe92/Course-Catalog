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

ActiveRecord::Schema.define(version: 20160321022434) do

  create_table "coursebelongs", force: :cascade do |t|
    t.string   "c_code"
    t.string   "s_id"
    t.string   "c_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "s_name"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "c_code"
    t.string   "c_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csrelations", force: :cascade do |t|
    t.string   "c_code"
    t.string   "s_id"
    t.string   "c_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.string   "u_id"
    t.string   "c_code"
    t.string   "c_name"
    t.string   "s_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "i_id"
    t.string   "i_email"
    t.string   "i_first"
    t.string   "i_middle"
    t.string   "i_last"
    t.string   "i_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "s_id"
    t.string   "s_name"
    t.string   "s_type"
    t.string   "s_abbr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
