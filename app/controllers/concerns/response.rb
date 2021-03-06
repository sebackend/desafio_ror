# frozen_string_literal: true

module Response
  def json_response(object, status=:ok, **args)
    render json: object, status: status, **args
  end
end
