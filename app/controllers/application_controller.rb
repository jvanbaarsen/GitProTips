class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :staging_authentication

  private
  def staging_authentication
    if ENV['STAGING_AUTH'] == "1"
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['STAGING_USERNAME'] && password == ENV['STAGING_PASSWORD']
      end
    end
  end
end
