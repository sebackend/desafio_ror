# frozen_string_literal: true

class CreditQuery < ApplicationRecord
  validates_presence_of :uf_amount, :term_days, :target_date

  def obtain_tmc
    tmc = SbifGateway.new(target_date).call
  end
end
