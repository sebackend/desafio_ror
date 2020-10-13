# frozen_string_literal: true

class SbifGateway
  require 'rest-client'
  BASE_URL = 'https://api.sbif.cl/api-sbifv3/recursos_api/tmc/'
  API_KEY  = ENV['SBIF_API_KEY']

  attr_reader :target_date

  def initialize(target_date)
    @target_date = target_date
  end

  def call
    result = {
      ok:    true,
      error: ''
    }

    url = "#{BASE_URL}#{target_date}?apikey=#{API_KEY}&formato=json"

    begin
      req = RestClient.get(url)

      binding.pry

      if req.body[:TMCs].present?

      else

      end
    rescue StandardError => e
      result[:ok] = false
      result[:error] = e.message
    end

    result
  end
end
