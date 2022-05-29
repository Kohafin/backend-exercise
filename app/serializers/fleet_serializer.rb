class FleetSerializer < ActiveModel::Serializer
  has_many :vehicles

  attributes :id, :name, :created_at, :updated_at
end
