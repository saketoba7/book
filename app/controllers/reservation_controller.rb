class ReservationController < ApplicationController

    before_action :set_reservation, only: %i(create show update destroy)

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
            redirect_to reservation_path(@reservation.id)
            flash[:notice] = "予約しました。"
        else
            render "new"
            @error_message = "必要な項目を入力してください"
        end
    end

    def show
        @reservation = Reservation.find(params[:id])
        @post = @reservation.post
    end

    def index
        @reservation = Reservation.all
    end

    private
    def reservation_params
        params.permit(:start_date, :end_date, :number, :post_id).merge(user_id: current_user.id)
    end

    def set_reservation
        @reservation = Reservation.find_by(id: params[:id])
    end
  
end
