# frozen_string_literal: true

class Fleet < ApplicationRecord
  has_many :vehicles
end
