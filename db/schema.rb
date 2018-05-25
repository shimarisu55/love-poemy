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

ActiveRecord::Schema.define(version: 2018_05_22_033158) do

  create_table "authors", force: :cascade do |t|
    t.string "author_name"
    t.text "author_description"
    t.integer "poem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grammars", force: :cascade do |t|
    t.string "grammar"
    t.text "grammar_description"
    t.integer "poem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poems", force: :cascade do |t|
    t.string "foreword"
    t.string "beginning"
    t.string "poem"
    t.string "image"
    t.text "meaning"
    t.string "author"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag"
    t.integer "poem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "words", force: :cascade do |t|
    t.string "word"
    t.text "word_description"
    t.integer "poem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
