class DashboardsController < ApplicationController
  def show
    @greeting = Greeting.new
  end
end
