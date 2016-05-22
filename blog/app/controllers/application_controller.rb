class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #
  #By including this here we can access this in all rails views and controllers
  include SessionsHelper
end
