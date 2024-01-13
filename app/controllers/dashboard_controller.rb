# app/controllers/dashboard_controller.rb
class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    @conducteurs = User.where(role: 'Conducteur')
  end
end
