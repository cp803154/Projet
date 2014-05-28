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

ActiveRecord::Schema.define(version: 20140528091936) do

  create_table "anecdotes", force: true do |t|
    t.string   "sujet"
    t.text     "texte"
    t.string   "themes"
    t.integer  "chapitre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "anecdotes", ["chapitre_id"], name: "index_anecdotes_on_chapitre_id"

  create_table "chapitres", force: true do |t|
    t.integer  "numero"
    t.string   "titre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personnages", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personnages_scenes", id: false, force: true do |t|
    t.integer "personnage_id", null: false
    t.integer "scene_id",      null: false
  end

  create_table "scenes", force: true do |t|
    t.text     "texte"
    t.string   "lieu"
    t.datetime "date"
    t.integer  "chapitre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scenes", ["chapitre_id"], name: "index_scenes_on_chapitre_id"

end
