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

ActiveRecord::Schema.define(:version => 20141020112503) do

  create_table "chronicler_documents", :force => true do |t|
    t.string   "name"
    t.string   "document"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chronicler_images", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "manticore_administrators", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "role"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_send_at"
  end

  create_table "willow_branches", :force => true do |t|
    t.string   "tree"
    t.string   "name"
    t.integer  "position",              :default => 0
    t.string   "ancestry"
    t.integer  "ancestry_depth",        :default => 0
    t.string   "positions_depth_cache"
    t.integer  "leaf_id"
    t.string   "leaf_type"
    t.boolean  "sturdy",                :default => false
    t.boolean  "can_have_children",     :default => false
    t.boolean  "primary",               :default => false
    t.string   "access_key"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "willow_branches", ["ancestry"], :name => "index_willow_branches_on_ancestry"

  create_table "willow_leaves", :force => true do |t|
    t.string "name"
    t.string "route"
    t.string "type"
  end

end
