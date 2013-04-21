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

ActiveRecord::Schema.define(:version => 20130421153559) do

  create_table "drop_down_menus", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "new_pros", :force => true do |t|
    t.string   "name"
    t.string   "lastName"
    t.string   "phoneNumber"
    t.integer  "country"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "proVotes"
    t.integer  "proVotesAfterJam"
  end

  create_table "perform_logins", :force => true do |t|
    t.string   "phone"
    t.string   "loginCode"
    t.string   "isactive"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "eaten"
  end

  create_table "videos", :force => true do |t|
    t.string   "url"
    t.string   "eaten"
    t.string   "proVotes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "phone"
  end

end
