class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :set_movie
  def index
    @tickets = Ticket.all
  end
  def show
    @seats = @ticket.seats
     @myAllseats = Seat.all
     @allSelectedSeat = Seat.all.map{|seat| seat.seat_number}
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def create
    # user = @current_user
    ticket = Ticket.new(ticket_params)
    ticket.movie = @movie

    respond_to do |format|
      if ticket.save
        number_of_seats = ticket.children + ticket.adults + ticket.students

        number_of_seats.times do
          Seat.create({:ticket_id => ticket.id})
        end
        # format.html { redirect_to @recipe.user, notice: 'ticket was successfully created.' }
        format.html { redirect_to movie_ticket_path(ticket.movie, ticket), notice: 'ticket was successfully created.' }
        #format.json { render :show, status: :created, location: @tictke.user }
      else
        format.html { render :new }
        format.json { render json: ticket.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.require(:ticket).permit(:adults, :children, :students, :total)
    end

    def set_movie
      @movie = Movie.find(params[:movie_id])
    end

end
