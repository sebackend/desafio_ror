# frozen_string_literal: true

class CreditQuerySerializer < ActiveModel::Serializer
  attributes :uf_amount, :term_days, :target_date, :tmc_val, :code_type
end
