# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::FleetsController, type: :controller, focus: true do
  let(:permitted_fleet_ids) { ['*'] } # Instead of redoing a lot of the code (as we spoke on google meet)
  let!(:fleet) { create(:fleet) }
  let!(:vehicle) { create(:vehicle, fleet_id: fleet.id) }

  before do
    request.headers['Content-Type']  = 'application/json'
    request.headers['Authorization'] = send('Authorization')
  end

  describe 'generic authorizations' do
    %i[show create update destroy].each do |action|
      include_examples 'fleet_permissions', :fleet, action
    end
  end

  describe '#index' do
    authorize_user(:fleet, :index)

    it '' do
      get :index
      expect(response.body).to eq([fleet.attributes.merge({ vehicles: [vehicle.attributes] })].to_json)
    end
  end
end
