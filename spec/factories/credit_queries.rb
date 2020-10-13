# frozen_string_literal: true

FactoryBot.define do
  factory :credit_query do
    uf_amount { 1000 }
    term_days { 90 }
    target_date { '2020-01-01' }
    code_type { 10 }
  end
end
