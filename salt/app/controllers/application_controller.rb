class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, secret)
  end

  def auth_headerd
    # byebug
    request.headers['Authorization']
  end

  def decoded_token
    if auth_headerd
      token = auth_headerd #.split(' ')[1]  #[Bearer, <token>]
      begin
        JWT.decode(token, secret, true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    
    if decoded_token
      user_id = decoded_token[0]['user_id']#[{ "user_id"=>"2" }, { "alg"=>"HS256" }]
      @user = User.find_by(id: user_id)
    else
      nil
    end
  end
  
  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  def secret
    "super secret"
  end

end
