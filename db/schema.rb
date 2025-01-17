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

ActiveRecord::Schema.define(version: 20151109230332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "junks", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "state"
    t.string   "coach"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "state"
    t.text     "bio"
    t.string   "coach_type"
    t.integer  "rating"
    t.integer  "price_low"
    t.integer  "price_high"
    t.string   "industry"
    t.string   "language"
    t.string   "certification"
    t.string   "skills"
    t.string   "experience"
    t.string   "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "bio"
    t.string   "coach_type"
    t.integer  "rating"
    t.integer  "price_low"
    t.integer  "price_high"
    t.string   "industry"
    t.string   "language"
    t.string   "certification"
    t.text     "skills"
    t.integer  "experience"
    t.string   "email"
  end

end
