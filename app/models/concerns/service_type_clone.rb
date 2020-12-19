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
#
class ServiceTypeClone < ApplicationRecord
  extend Mobility
  translates :name, :description, :meta_content, backend: :container, fallthrough_accessors: true
end