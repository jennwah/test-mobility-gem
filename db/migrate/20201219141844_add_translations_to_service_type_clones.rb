class AddTranslationsToServiceTypeClones < ActiveRecord::Migration[5.0]
  def change
    add_column :service_type_clones, :translations, :jsonb, default: {}
  end
end
