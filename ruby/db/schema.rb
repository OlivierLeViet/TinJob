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

ActiveRecord::Schema.define(version: 20161116103844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "picture"
  end

  create_table "comment", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "postal"
    t.string   "adress"
    t.decimal  "price"
    t.boolean  "car"
    t.boolean  "smoke"
    t.boolean  "pet"
    t.integer  "review_id"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "note"
    t.integer  "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "encrypted_password",     default: "",  null: false
    t.string   "reset_password_token"
    t.string   "reset_password_sent_at"
    t.integer  "grade"
    t.datetime "birthday"
    t.string   "picture"
    t.string   "skill"
    t.string   "number"
    t.string   "adress"
    t.boolean  "car"
    t.boolean  "smoke"
    t.boolean  "pet"
    t.integer  "note"
    t.string   "remember_created_at"
    t.string   "sign_in_count",          default: "0", null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
