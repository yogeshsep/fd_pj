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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141016104752) do

  create_table "fds", :force => true do |t|
    t.string   "customername"
    t.date     "dateofbirth"
    t.string   "sex"
    t.text     "addr"
    t.string   "city"
    t.integer  "pin"
    t.text     "pan"
    t.date     "openedon"
    t.float    "depositamount", :limit => 255
    t.float    "roi"
    t.integer  "noy"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.date     "md"
    t.float    "interest",      :limit => 255
    t.integer  "age"
  end

end
