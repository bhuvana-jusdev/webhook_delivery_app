class ThirdPartyController < ActionController::Base
  skip_before_action :verify_authenticity_token, only: [:connect_one, :connect_two, :connect_three]

  def connect_one
    render json: { status: :true, code: 200, message: "Notification Received at connect one" }
  end

  def connect_two
    render json: { status: :true, code: 200, message: "Notification Received at connect one" }
  end

  def connect_three
    render json: { status: :true, code: 200, message: "Notification Received at connect one" }
  end
end
