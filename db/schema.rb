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

ActiveRecord::Schema.define(version: 20140514000359) do

  create_table "games", force: true do |t|
    t.datetime "gametime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "tournament_id"
  end

  create_table "teams_tournaments", id: false, force: true do |t|
    t.integer "team_id"
    t.integer "tournament_id"
  end

  add_index "teams_tournaments", ["team_id", "tournament_id"], name: "index_teams_tournaments_on_team_id_and_tournament_id"
  add_index "teams_tournaments", ["tournament_id"], name: "index_teams_tournaments_on_tournament_id"

  create_table "teams_users", id: false, force: true do |t|
    t.integer "team_id"
    t.integer "user_id"
  end

  add_index "teams_users", ["team_id", "user_id"], name: "index_teams_users_on_team_id_and_user_id"
  add_index "teams_users", ["user_id"], name: "index_teams_users_on_user_id"

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.integer  "tournament_id"
  end

end
