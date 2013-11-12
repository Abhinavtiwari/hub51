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

ActiveRecord::Schema.define(version: 20131112184243) do

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "entrees", force: true do |t|
    t.string  "name"
    t.string  "description"
    t.integer "category_id"
  end

  create_table "restrictions", force: true do |t|
    t.integer "starter_id"
    t.integer "entree_id"
  end

  create_table "selections", force: true do |t|
    t.string  "diner"
    t.integer "first_starter_id"
    t.integer "second_starter_id"
    t.integer "first_entree_id"
    t.integer "second_entree_id"
    t.text    "comments"
  end

  create_table "starters", force: true do |t|
    t.string  "name"
    t.string  "description"
    t.integer "category_id"
  end

end
