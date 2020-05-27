class Api::BaseController < ApplicationController
  include SerializerHelper

  private
  def render_json status, data = {}, message = ""
    render json: data.merge!(status: status, message: message), status: status
  end
end
