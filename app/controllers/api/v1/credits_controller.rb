# frozen_string_literal: true

module Api
  module V1
    class CreditsController < V1Controller
      def index
        json_response({}, :ok)
      end
    end
  end
end
