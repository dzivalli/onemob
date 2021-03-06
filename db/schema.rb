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

ActiveRecord::Schema.define(version: 20150821183146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "name",            null: false
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "customers", ["organization_id"], name: "index_customers_on_organization_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_activities", force: :cascade do |t|
    t.integer  "plays",      default: 0, null: false
    t.string   "ip"
    t.integer  "opens",      default: 0, null: false
    t.integer  "video_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "video_activities", ["video_id"], name: "index_video_activities_on_video_id", using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "subject",         null: false
    t.text     "body"
    t.string   "url",             null: false
    t.string   "thumbnail_image"
    t.integer  "customer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "videos", ["customer_id"], name: "index_videos_on_customer_id", using: :btree

  add_foreign_key "customers", "organizations"
  add_foreign_key "video_activities", "videos"
  add_foreign_key "videos", "customers"
end
