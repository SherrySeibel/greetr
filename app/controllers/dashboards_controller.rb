class DashboardsController < ApplicationController
  def show
    @greeting = Greeting.new
    @greetings = current_user.received_greetings.order("created_at DESC")
    @users = User.all
  end


  private
  def greetings_params
    params.require(:greeting).
      permit(
      :body,
      :receiver,
    )
  end
end
