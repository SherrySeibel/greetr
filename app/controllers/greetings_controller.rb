class GreetingsController < ApplicationController
  def index
    received_greetings = User.new
  end
  def create
    @greetings = current_user.greetings.create(greeting_params)
    redirect_to :dashboard
  end

  private

  def greeting_params
    params.require(:greeting).
      permit(
        :body,
        :receiver_id,
        :sender_id,
    )
  end
end
