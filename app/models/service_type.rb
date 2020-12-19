# == Schema Information
#
# Table name: service_types
#
#  id               :integer          not null, primary key
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  slug             :string
#  image_id         :string
#  keywords         :string
#  deleted_at       :datetime
#  searchable       :boolean          default(TRUE)
#  franchise        :boolean          default(FALSE)
#  image_thumb_url  :hstore
#  description      :text
#  meta_content     :jsonb
#  enabled_partners :string           default([]), is an Array
#  finance_on_hold  :boolean          default(FALSE)
#

class ServiceType < ApplicationRecord
  extend Mobility
  translates :name, type: :string, fallthrough_accessors: true # can have fallbacks
  translates :description, type: :text, fallthrough_accessors: true
  translates :keyword, type: :text
  translates :meta_content, backend: :jsonb, column_suffix: '_i18n'
  translates :slug, type: :string, fallthrough_accessors: true
  default_scope { i18n }
end