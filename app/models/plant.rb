# frozen_string_literal: true

class Plant < ApplicationRecord
  belongs_to :garden # adds a presence validation on the garden_id foreign key
  has_many :plant_tags
  has_many :tags, through: :plant_tags

  validates :name, presence: true
end
