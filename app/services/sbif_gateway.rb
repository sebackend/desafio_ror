# frozen_string_literal: true

class SbifGateway
  require 'rest-client'
  BASE_URL = 'https://api.sbif.cl/api-sbifv3/recursos_api/tmc/'
  API_KEY  = ENV['SBIF_API_KEY']

  attr_reader :target_date, :code_type

  def initialize(target_date, code_type)
    @target_date = target_date
    @code_type = code_type
  end

  def call
    result = {
      ok:    true,
      error: ''
    }

    url = "#{BASE_URL}#{target_date}?apikey=#{API_KEY}&formato=json"

    begin
      req = RestClient.get(url)
      json_response = JSON.parse(req.body)

      if json_response['TMCs'].present?
        tmc = json_response['TMCs'].select { |tmc| tmc['Tipo'] == code_type.to_s }.first if code_type.present?
        tmc = json_response['TMCs'].first if code_type.blank? || tmc.blank?

        result[:tmc] = tmc['Valor'].to_f
      end
    rescue StandardError => e
      result[:ok] = false
      result[:error] = e.message
    end

    result
  end
end
