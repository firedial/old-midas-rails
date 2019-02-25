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

ActiveRecord::Schema.define(version: 2019_02_25_143561) do

  create_table "balances", force: :cascade do |t|
    t.integer "amount"
    t.string "item"
    t.integer "kind_id"
    t.integer "purpose_id"
    t.integer "place_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kind_id"], name: "index_balances_on_kind_id"
    t.index ["place_id"], name: "index_balances_on_place_id"
    t.index ["purpose_id"], name: "index_balances_on_purpose_id"
  end

  create_table "kind_groups", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_kind_groups_on_name", unique: true
  end

  create_table "kind_relations", force: :cascade do |t|
    t.integer "kind_group_id"
    t.integer "kind_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kind_group_id", "kind_id"], name: "index_kind_relations_on_kind_group_id_and_kind_id", unique: true
    t.index ["kind_group_id"], name: "index_kind_relations_on_kind_group_id"
  end

  create_table "kinds", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_kinds_on_name", unique: true
  end

  create_table "place_groups", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_place_groups_on_name", unique: true
  end

  create_table "place_relations", force: :cascade do |t|
    t.integer "place_group_id"
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_group_id", "place_id"], name: "index_place_relations_on_place_group_id_and_place_id", unique: true
    t.index ["place_group_id"], name: "index_place_relations_on_place_group_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_places_on_name", unique: true
  end

  create_table "purpose_groups", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_purpose_groups_on_name", unique: true
  end

  create_table "purpose_relations", force: :cascade do |t|
    t.integer "purpose_group_id"
    t.integer "purpose_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purpose_group_id", "purpose_id"], name: "index_purpose_relations_on_purpose_group_id_and_purpose_id", unique: true
    t.index ["purpose_group_id"], name: "index_purpose_relations_on_purpose_group_id"
  end

  create_table "purposes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_purposes_on_name", unique: true
  end

end
