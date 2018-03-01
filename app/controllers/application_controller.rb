class ApplicationController < ActionController::Base
  # <niyati - authenitcate user bfore actin
  before_action :authenticate_user!
  protect_from_forgery with: :exception
end
