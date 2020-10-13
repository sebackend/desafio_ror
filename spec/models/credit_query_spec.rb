# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CreditQuery, type: :model do
  describe 'Attributes' do
    it { should respond_to(:uf_amount) }
    it { should respond_to(:term_days) }
    it { should respond_to(:target_date) }
    it { should respond_to(:tmc_val) }
    it { should respond_to(:code_type) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:uf_amount) }
    it { should validate_presence_of(:term_days) }
    it { should validate_presence_of(:target_date) }
  end
end
