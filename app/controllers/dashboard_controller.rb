class DashboardController < ApplicationController
  def index
    redirect_to direction_rates_path
  end
end
