# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'CreditQueries', type: :request do
  let!(:url) { '/api/v1/credit_queries/tmc' }

  describe 'GET#tmc' do
    context 'when correct params' do
      let!(:credit_query) { build(:credit_query) }

      before do
        attributes = credit_query.attributes
        get url, params: attributes
      end

      it 'should be ok' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns tmc' do
        expect(response.body).not_to be_empty
      end
    end

    context 'when incorrect params' do
      before { get url, params: {} }

      it 'returns invalid tmc' do
        message = JSON.parse(response.body)['message']
        expect(message).not_to be_empty
      end

      it 'returns status code 422' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
