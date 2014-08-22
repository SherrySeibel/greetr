class DashboardsController < ApplicationController
  def show
    @greeting = Greeting.new
    @greetings = current_user.received_greetings
  end
end
