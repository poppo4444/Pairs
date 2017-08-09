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

ActiveRecord::Schema.define(version: 20170804033259) do

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "liker_id"
    t.integer  "liking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["liker_id", "liking_id"], name: "index_likes_on_liker_id_and_liking_id", unique: true, using: :btree
    t.index ["liker_id"], name: "index_likes_on_liker_id", using: :btree
    t.index ["liking_id"], name: "index_likes_on_liking_id", using: :btree
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nickname"
    t.string   "age"
    t.string   "blood"
    t.string   "brother"
    t.string   "birthplace"
    t.string   "language"
    t.string   "education"
    t.string   "job"
    t.integer  "height"
    t.string   "bodytype"
    t.boolean  "marital"
    t.boolean  "children"
    t.boolean  "housemate"
    t.datetime "holiday"
    t.boolean  "liquor"
    t.boolean  "tobacco"
    t.boolean  "marriagedesire"
    t.string   "wantchild"
    t.string   "household"
    t.string   "meet"
    t.string   "datecost"
    t.string   "personality"
    t.string   "sociability"
    t.text     "body",           limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "user_id",                      null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "token"
    t.text     "image",                  limit: 65535
    t.integer  "sexes"
    t.string   "nickname"
    t.integer  "age"
    t.string   "blood"
    t.string   "brother"
    t.string   "birthplace"
    t.string   "language"
    t.string   "education"
    t.string   "job"
    t.integer  "height"
    t.string   "bodytype"
    t.string   "marital"
    t.string   "children"
    t.string   "housemate"
    t.string   "holiday"
    t.string   "liquor"
    t.string   "tobacco"
    t.string   "marriagedesire"
    t.string   "wantchild"
    t.string   "household"
    t.string   "meet"
    t.string   "datecost"
    t.string   "personality"
    t.string   "sociability"
    t.string   "body"
    t.string   "live"
    t.string   "income"
    t.string   "country"
    t.string   "hobby"
    t.string   "likes_count"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
