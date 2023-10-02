class ApplicationController < ActionController::Base
  include Pundit::Authorization
  # protect_from_forgery
  
  before_action :authenticate_user!
  # include Pundit
end
