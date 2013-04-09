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

ActiveRecord::Schema.define(:version => 20130409012020) do

  create_table "datelogs", :force => true do |t|
    t.date     "daylog"
    t.integer  "tottime"
    t.integer  "altnumeric"
    t.integer  "employee_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "datelogs", ["employee_id"], :name => "index_datelogs_on_employee_id"

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "tottime"
    t.integer  "altid"
    t.integer  "division_id"
    t.datetime "creation"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "admin"
    t.string   "password_digest"
    t.string   "email"
    t.string   "remember_token"
    t.string   "password"
  end

  create_table "timelogs", :force => true do |t|
    t.string   "type"
    t.integer  "altcatid"
    t.integer  "hourlog"
    t.string   "description"
    t.integer  "datelog_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "timelogs", ["datelog_id"], :name => "index_timelogs_on_datelog_id"

end
