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

ActiveRecord::Schema.define(version: 20170828222631) do

  create_table "battles", force: :cascade do |t|
    t.time "time"
    t.integer "bet"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_teams", force: :cascade do |t|
    t.boolean "is_activo"
    t.integer "player_id"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_teams_on_player_id"
    t.index ["team_id"], name: "index_player_teams_on_team_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "numero_goals"
    t.integer "plays_win"
    t.integer "plays_lose"
    t.integer "reputation"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_battles", force: :cascade do |t|
    t.boolean "is_win"
    t.integer "team_id"
    t.integer "battle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["battle_id"], name: "index_team_battles_on_battle_id"
    t.index ["team_id"], name: "index_team_battles_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "reputation"
    t.integer "plays_win"
    t.integer "plays_lose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
