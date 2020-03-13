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

ActiveRecord::Schema.define(version: 2020_03_13_221357) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colorstraps", force: :cascade do |t|
    t.string "primary"
    t.string "secondary"
    t.string "success"
    t.string "info"
    t.string "warning"
    t.string "danger"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "background"
    t.string "text_light"
    t.string "text_dark"
    t.string "light"
    t.string "dark"
    t.string "link_hover"
  end

end
