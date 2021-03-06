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

ActiveRecord::Schema.define(version: 2018_07_23_074710) do

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.string "desc"
    t.integer "category_id"
    t.string "category_name"
    t.integer "author_id"
    t.string "author_name"
    t.text "content"
    t.text "content_html"
    t.integer "status"
    t.boolean "is_deleted"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["is_deleted"], name: "index_notes_on_is_deleted"
    t.index ["status"], name: "index_notes_on_status"
  end

end
