class CreateServiceType < ActiveRecord::Migration[5.0]
  def change
    create_table :service_types do |t|
      t.string   "name"
      t.datetime "created_at",                   null: false
      t.datetime "updated_at",                   null: false
      t.string   "slug"
      t.string   "image_id"
      t.string   "keywords"
      t.datetime "deleted_at"
      t.boolean  "searchable",      default: true
      t.boolean  "franchise",       default: false
      t.text     "description"
      t.jsonb    "meta_content"
      t.string   "enabled_partners", default: [],                 array: true
      t.boolean  "finance_on_hold",  default: false
    end
  end
end
