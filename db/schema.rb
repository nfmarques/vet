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

ActiveRecord::Schema.define(version: 20151213204012) do

  create_table "animals", force: :cascade do |t|
    t.string "animal_name", limit: 255
    t.string "owner_name", limit: 255
    t.date "birth_date"
    t.integer "weigth", limit: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "race_id", limit: 4
    t.integer "gender_id", limit: 4
    t.integer "category_id", limit: 4
    t.integer "clinic_id", limit: 4
  end

  add_index "animals", ["category_id"], name: "index_animals_on_category_id", using: :btree
  add_index "animals", ["clinic_id"], name: "index_animals_on_clinic_id", using: :btree
  add_index "animals", ["gender_id"], name: "index_animals_on_gender_id", using: :btree
  add_index "animals", ["race_id"], name: "index_animals_on_race_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string "description", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string "clinic_name", limit: 255
    t.string "address", limit: 255
    t.string "email", limit: 255
    t.string "phone", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "description", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "description", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "description", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_clinics", force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "clinic_id", limit: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", limit: 4, default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role_id", limit: 4
    t.string "username", limit: 255
    t.string "first_name", limit: 255
    t.string "last_name", limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  add_foreign_key "animals", "categories"
  add_foreign_key "animals", "clinics"
  add_foreign_key "animals", "genders"
  add_foreign_key "animals", "races"
  add_foreign_key "users", "roles"
end
