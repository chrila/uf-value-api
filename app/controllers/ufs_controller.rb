class UfsController < ApplicationController
  respond_to :json

  def get_uf_value
    day = params[:date]
    user = params[:client]

    Request.create(client: user, query: day)

    value = 'Invalid date. It must be of format YYYY/MM/DD or DD/MM/YYYY'
    begin
      day.to_date
      uf_history = UfHistory.find_by(day: day)
      value = uf_history.nil? ? 'No recorded value for the given date' : uf_history.value
    rescue => exception
    end

    answer = { day: day, value: value }

    #respond_to do |format|
    #  format.js { render json: answer }
    #end

    render json: answer
  end
end
