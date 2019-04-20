class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: 'username', password: 'password'

  def show
  end
  
end