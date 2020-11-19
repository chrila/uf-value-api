class ClientController < ApplicationController
  def get_number_requests
    user = params[:client]
    count = Request.where(client: user).count

    answer = { client: user, requests: count }
    render json: answer
  end
end
