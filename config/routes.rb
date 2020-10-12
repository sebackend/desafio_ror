# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'api/v1/credits#index'

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :credits, only: %i[index]
    end
  end
end
