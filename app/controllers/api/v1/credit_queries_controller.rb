# frozen_string_literal: true

module Api
  module V1
    class CreditQueriesController < V1Controller
      def tmc
        @credit_query = CreditQuery.find_or_initialize_by(
          uf_amount:   params[:uf_amount].to_f,
          term_days:   params[:term_days].to_i,
          target_date: params[:target_date],
          code_type:   params[:code_type]
        )

        @credit_query.obtain_tmc if @credit_query.valid?
        @credit_query.save!

        json_response(@credit_query, :ok)
      end
    end
  end
end
