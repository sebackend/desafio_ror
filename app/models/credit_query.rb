# frozen_string_literal: true

class CreditQuery < ApplicationRecord
  validates_presence_of :uf_amount, :term_days, :target_date, :tmc_val
  validate :code_type_valid?, if: proc { code_type.present? }

  def obtain_tmc
    return if tmc_val.positive?

    date = target_date.day >= 15 ? target_date : (target_date - 15.days)
    parsed_date = date.strftime('%Y/%m')

    result = SbifGateway.new(parsed_date, code_type).call

    self.tmc_val = result[:tmc] if result[:tmc].present?
  end

  def self.possible_codes
    [
      1, 2, 3, 4, 5, 6, 7,
      8, 9, 10, 11, 12, 13,
      14, 15, 20, 21, 22, 23,
      24, 25, 26, 27, 28, 29,
      30, 31, 32, 33, 34, 35,
      36, 37, 38, 39, 40, 41,
      42, 43, 44, 45
    ]
  end

  private

  def code_type_valid?
    return true if CreditQuery.possible_codes.include?(code_type)

    errors.add(:code_type, 'CODIGO NO EXISTE')
  end
end
