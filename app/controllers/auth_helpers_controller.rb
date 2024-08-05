class AuthHelpersController < ActionController::Base
  skip_before_action :verify_authenticity_token, only: [:get_csrf_token]

  def get_csrf_token
    csrf_token = form_authenticity_token

    if csrf_params[:client_secret].present? && csrf_params[:client_secret] == 'a6d5f0705fb951ef79de'
      render json: { status: :true, code: 200, message: "CSRF Token", data: { csrf_token: csrf_token } }
    else
      render json: { status: :false, code: 400, message: "Bad Request" }
    end
  end

  private

  def csrf_params
    params.permit(:client_secret)
  end
end
