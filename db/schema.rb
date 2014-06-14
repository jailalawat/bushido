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

ActiveRecord::Schema.define(version: 20140610203810) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "activities", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "articles", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rub"
  end

  create_table "assigns", force: true do |t|
    t.integer  "customer_id"
    t.integer  "staff_id"
    t.integer  "discount_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bucket_products", force: true do |t|
    t.integer  "bucket_id"
    t.string   "bucket_type"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.integer  "customer_id"
    t.integer  "staff_id"
    t.integer  "admin_user_id"
    t.integer  "discount_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.integer  "phone"
    t.string   "email"
    t.string   "car"
    t.integer  "discount_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["discount_id"], name: "index_customers_on_discount_id"

  create_table "discounts", force: true do |t|
    t.integer  "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string   "title"
    t.integer  "activity_id"
    t.string   "web_site"
    t.string   "contact"
    t.integer  "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "admin_user_id"
    t.boolean  "is_new"
    t.boolean  "is_current"
    t.boolean  "is_denied"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "partners", ["activity_id"], name: "index_partners_on_activity_id"
  add_index "partners", ["admin_user_id"], name: "index_partners_on_admin_user_id"

  create_table "products", force: true do |t|
    t.integer  "article_id"
    t.string   "title"
    t.text     "description"
    t.decimal  "price"
    t.boolean  "featured"
    t.date     "available"
    t.string   "image_file_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "square"
    t.integer  "type_id"
  end

  add_index "products", ["article_id"], name: "index_products_on_article_id"

  create_table "providers", force: true do |t|
    t.string   "title"
    t.integer  "supply_id"
    t.string   "web_site"
    t.integer  "phone"
    t.string   "email"
    t.string   "open_at"
    t.string   "closed_at"
    t.boolean  "shipping"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "providers", ["supply_id"], name: "index_providers_on_supply_id"

  create_table "staffs", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.integer  "job_id"
    t.integer  "phone"
    t.decimal  "pay"
    t.string   "start_at"
    t.string   "finish_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "staffs", ["job_id"], name: "index_staffs_on_job_id"

  create_table "supplies", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
