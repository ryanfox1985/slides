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

ActiveRecord::Schema.define(version: 0) do

  create_table "activities", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "offset"
    t.integer  "limit"
    t.integer  "count"
    t.string   "history"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activity", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "error", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "code"
    t.string   "message"
    t.string   "fields"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_estimate", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "product_id"
    t.string   "currency_code"
    t.string   "display_name"
    t.string   "estimate"
    t.float    "low_estimate",     limit: 24
    t.float    "high_estimate",    limit: 24
    t.float    "surge_multiplier", limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "product_id"
    t.string   "description"
    t.string   "display_name"
    t.string   "capacity"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profile", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "picture"
    t.string   "promo_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
