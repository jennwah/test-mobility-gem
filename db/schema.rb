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

ActiveRecord::Schema.define(version: 20201219141844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mobility_string_translations", force: :cascade do |t|
    t.string   "locale",            null: false
    t.string   "key",               null: false
    t.string   "value"
    t.integer  "translatable_id",   null: false
    t.string   "translatable_type", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["translatable_id", "translatable_type", "key"], name: "index_mobility_string_translations_on_translatable_attribute", using: :btree
    t.index ["translatable_id", "translatable_type", "locale", "key"], name: "index_mobility_string_translations_on_keys", unique: true, using: :btree
    t.index ["translatable_type", "key", "value", "locale"], name: "index_mobility_string_translations_on_query_keys", using: :btree
  end

  create_table "mobility_text_translations", force: :cascade do |t|
    t.string   "locale",            null: false
    t.string   "key",               null: false
    t.text     "value"
    t.integer  "translatable_id",   null: false
    t.string   "translatable_type", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["translatable_id", "translatable_type", "key"], name: "index_mobility_text_translations_on_translatable_attribute", using: :btree
    t.index ["translatable_id", "translatable_type", "locale", "key"], name: "index_mobility_text_translations_on_keys", unique: true, using: :btree
  end

  create_table "service_type_clones", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "slug"
    t.string   "image_id"
    t.string   "keywords"
    t.datetime "deleted_at"
    t.boolean  "searchable",       default: true
    t.boolean  "franchise",        default: false
    t.text     "description"
    t.jsonb    "meta_content"
    t.string   "enabled_partners", default: [],                 array: true
    t.boolean  "finance_on_hold",  default: false
    t.jsonb    "translations",     default: {}
  end

  create_table "service_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "slug"
    t.string   "image_id"
    t.string   "keywords"
    t.datetime "deleted_at"
    t.boolean  "searchable",       default: true
    t.boolean  "franchise",        default: false
    t.text     "description"
    t.jsonb    "meta_content"
    t.string   "enabled_partners", default: [],                 array: true
    t.boolean  "finance_on_hold",  default: false
  end

end
