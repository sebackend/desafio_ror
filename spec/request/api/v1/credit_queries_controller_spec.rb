# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'CreditQueries', type: :request do
  let!(:url) { '/api/v1/credits/tmc' }

  describe 'GET#tmc' do
    context 'when correct params' do
      before { get url, params: { uf_amount: '1000', term_days: 90, target_date: '2020-01-10' } }

      it 'returns tmc' do
        expect(response).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(:ok)
      end
    end

    context 'when incorrect params' do
      before { get url, params: {} }

      it 'returns tmc' do
        expect(response).to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
