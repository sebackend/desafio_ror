# frozen_string_literal: true

module Api
  module V1
    class CreditQueriesController < V1Controller
      def tmc
        @credit_query = CreditQuery.find_or_initialize_by(
          uf_amount:   params[:uf_amount].to_f,
          term_days:   params[:term_days].to_i,
          target_date: params[:target_date]
        )

        @credit_query.save!
        @credit_query.find_tmc

        json_response(@credit_query, :ok)
      end
    end
  end
end
