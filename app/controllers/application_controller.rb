class ApplicationController < ActionController::Base
  before_action :authorized
  skip_before_action :authorized, :only => [:index]
  # skip_before_action :verify_authenticity_token, :only => [:create]
  include ActionController::Cookies

  private

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end
