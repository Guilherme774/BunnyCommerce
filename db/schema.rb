# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_06_142738) do
  create_table "carrots", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price"
    t.integer "stock"
    t.integer "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_carrots_on_supplier_id"
  end

  create_table "cartings", force: :cascade do |t|
    t.integer "carrot_id", null: false
    t.integer "quantity"
    t.decimal "total"
    t.integer "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrot_id"], name: "index_cartings_on_carrot_id"
    t.index ["order_id"], name: "index_cartings_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "payment_method"
    t.string "status"
    t.string "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "carrots", "suppliers"
  add_foreign_key "cartings", "carrots"
  add_foreign_key "cartings", "orders"
  add_foreign_key "orders", "users"
end
