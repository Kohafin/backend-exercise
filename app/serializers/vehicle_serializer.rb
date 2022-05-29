# frozen_string_literal: true

class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :fleet_id, :vin, :make, :model, :odometer, :created_at, :updated_at
end
