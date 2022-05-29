# frozen_string_literal: true

module Api
  module V1
    class FleetsController < BaseController
      def index
        fleets = Fleet.joins(:vehicles)
        @pagy, @data = pagy(fleets, max_items: 9_999)

        render json: @data
      end

      private

      def permitted_params
        %i[id name]
      end
    end
  end
end
