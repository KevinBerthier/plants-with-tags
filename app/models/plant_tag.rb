# frozen_string_literal: true

class PlantTag < ApplicationRecord
  belongs_to :tag
  belongs_to :plant
end
