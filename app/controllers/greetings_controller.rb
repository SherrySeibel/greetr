class GreetingsController < ApplicationController
  def create
    @greetings = current_user.greetings.create(greeting_params)
  end

  private

  def greeting_params
    params.require(:greeting).
      permit(
        :body,
    )
  end
end
