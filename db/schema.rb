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

ActiveRecord::Schema[7.1].define(version: 2024_08_18_165638) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone_number", null: false
    t.boolean "loyal_client", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "problematic_client", default: false
    t.index ["first_name"], name: "index_clients_on_first_name"
    t.index ["id"], name: "index_clients_on_id"
    t.index ["last_name"], name: "index_clients_on_last_name"
    t.index ["phone_number"], name: "index_clients_on_phone_number"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "client_id"
    t.string "device_type"
    t.string "device_brand"
    t.string "device_model"
    t.string "device_serial"
    t.string "device_set"
    t.string "device_condition"
    t.string "malfunction"
    t.string "estimated_cost"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
