class DashboardsController < ApplicationController
  def show
    @greetings = Greeting.new
  end
end
