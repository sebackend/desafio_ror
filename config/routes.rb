# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'api/v1/credit_queries#tmc'

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :credit_queries, only: [] do
        collection do
          get :tmc
        end
      end
    end
  end
end
