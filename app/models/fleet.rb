# frozen_string_literal: true

class Fleet < ApplicationRecord
  has_many :vehicles

  def fleet_id=(_); end;
end

