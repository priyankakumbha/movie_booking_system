class SeatsController < ApplicationController
  def show
  end

  def new
  end

  def edit
  end

  def index
  end

  def update
    seat = Seat.find(params[:seat][:seat_id])
    seat_number = params[:seat][:seat_number]
    if seat.update({:seat_number => seat_number})
      render :json => {status: :ok}
    else
      render :json => {status: :unprocessable_entity}
    end
  end
end
