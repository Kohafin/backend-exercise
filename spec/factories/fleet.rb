# frozen_string_literal: true

FactoryBot.define do
  factory :fleet do
    name { Faker::Name.name }
  end
end
