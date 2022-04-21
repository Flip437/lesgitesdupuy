class Admin::ReservationsController < ApplicationController
  before_action :set_admin_reservation, only: %i[ show edit update destroy get_infos]

  # GET /admin/reservations or /admin/reservations.json
  def index
    @admin_reservations = Admin::Reservation.all
  end

  # GET /admin/reservations/1 or /admin/reservations/1.json
  def show
  end

  # GET /admin/reservations/new
  def new
    @admin_reservation = Admin::Reservation.new
  end

  # GET /admin/reservations/1/edit
  def edit
  end

  # POST /admin/reservations or /admin/reservations.json
  def create
    @admin_reservation = Admin::Reservation.new(admin_reservation_params)

    respond_to do |format|
      if @admin_reservation.save
        format.html { redirect_to admin_reservation_url(@admin_reservation), notice: "Reservation was successfully created." }
        format.json { render :show, status: :created, location: @admin_reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/reservations/1 or /admin/reservations/1.json
  def update
    respond_to do |format|
      if @admin_reservation.update(admin_reservation_params)
        format.html { redirect_to admin_reservation_url(@admin_reservation), notice: "Reservation was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_reservation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/reservations/1 or /admin/reservations/1.json
  def destroy
    @admin_reservation.destroy

    respond_to do |format|
      format.html { redirect_to admin_reservations_url, notice: "Reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_reservation
      @admin_reservation = Admin::Reservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_reservation_params
      params.require(:admin_reservation).permit(:start_date, :end_date, :firstname, :lastname, :email, :bedroom_id)
    end
end
