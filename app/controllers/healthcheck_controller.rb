class HealthcheckController < ApplicationController
  def up
    render plain: "OK", status: :ok
  end
end
