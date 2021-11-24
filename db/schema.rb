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

ActiveRecord::Schema.define(version: 2021_11_22_110824) do

  create_table "characters", force: :cascade do |t|
    t.string "name", null: false
    t.integer "current_life"
    t.integer "damage_attack", null: false
    t.integer "shield", null: false
    t.integer "experience", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "image_id"
    t.integer "life", null: false
    t.index ["image_id"], name: "index_characters_on_image_id"
  end

  create_table "fights", force: :cascade do |t|
    t.string "status"
    t.integer "opponent1_id", null: false
    t.integer "opponent2_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "winner"
    t.index ["opponent1_id"], name: "index_fights_on_opponent1_id"
    t.index ["opponent2_id"], name: "index_fights_on_opponent2_id"
  end

  create_table "hits", force: :cascade do |t|
    t.integer "fight_id"
    t.integer "damage_point"
    t.integer "defender_id", null: false
    t.integer "attacker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attacker_id"], name: "index_hits_on_attacker_id"
    t.index ["defender_id"], name: "index_hits_on_defender_id"
    t.index ["fight_id"], name: "index_hits_on_fight_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters", "images"
  add_foreign_key "fights", "characters", column: "opponent1_id"
  add_foreign_key "fights", "characters", column: "opponent2_id"
  add_foreign_key "hits", "characters", column: "attacker_id"
  add_foreign_key "hits", "characters", column: "defender_id"
  add_foreign_key "hits", "fights"
end
