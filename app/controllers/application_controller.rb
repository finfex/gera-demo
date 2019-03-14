class ApplicationController < ActionController::Base
  helper NotyFlash::ApplicationHelper
  helper Gera::CurrencyRateHelper

  private

  def logged_in?
    false
  end

  def current_user
    User.new
  end
end
