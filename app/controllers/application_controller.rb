class ApplicationController < ActionController::Base
  rescue_from ActionController::InvalidAuthenticityToken, with: :handle_invalid_authenticity_token

  def handle_invalid_authenticity_token
    respond_to do |format|
      format.json { render json: { status: false, code: 400, message: 'Invalid authenticity token' }, status: :unprocessable_entity }
    end
  end
end
