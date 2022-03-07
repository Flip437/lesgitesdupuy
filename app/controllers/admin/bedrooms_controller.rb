class Admin::BedroomsController < ApplicationController
  before_action :set_admin_bedroom, only: %i[ show edit update destroy get_infos]

  # GET /admin/bedrooms or /admin/bedrooms.json
  def index
    @admin_bedrooms = Admin::Bedroom.all
  end

  # GET /admin/bedrooms/1 or /admin/bedrooms/1.json
  def show
  end

  # GET /admin/bedrooms/new
  def new
    @admin_bedroom = Admin::Bedroom.new
    @admin_cottages = Admin::Cottage.all
  end

  # GET /admin/bedrooms/1/edit
  def edit
  end

  # POST /admin/bedrooms or /admin/bedrooms.json
  def create
    @admin_bedroom = Admin::Bedroom.new(admin_bedroom_params)

    respond_to do |format|
      if @admin_bedroom.save
        format.html { redirect_to admin_bedroom_url(@admin_bedroom), notice: "Bedroom was successfully created." }
        format.json { render :show, status: :created, location: @admin_bedroom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_bedroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/bedrooms/1 or /admin/bedrooms/1.json
  def update
    respond_to do |format|
      if @admin_bedroom.update(admin_bedroom_params)
        format.html { redirect_to admin_bedroom_url(@admin_bedroom), notice: "Bedroom was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_bedroom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_bedroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/bedrooms/1 or /admin/bedrooms/1.json
  def destroy
    @admin_bedroom.destroy

    respond_to do |format|
      format.html { redirect_to admin_bedrooms_url, notice: "Bedroom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def get_infos
    puts "PARAMSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
    puts @admin_bedroom.errors
    puts "PARAMSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"

    
    respond_to do |format|
      if @admin_bedroom
        format.html {}
        format.json { render json: @admin_bedroom, status: :ok }
      else
        puts "ADMIN BEDROOM IS NILLLLLLLLLLLLLLLLLLLLLLLL"
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_bedroom, status: :unprocessable_entity }
      end
    end


    # respond_to do |format|
    #   format.json { render json: {blabla: "blablabla"} }
    # end

  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_bedroom
      begin
        @admin_bedroom = Admin::Bedroom.find(params[:id])
      rescue
        @admin_bedroom = nil
      end
    end

    # Only allow a list of trusted parameters through.
    def admin_bedroom_params
      params.fetch(:admin_bedroom, {}).permit(:cottage_id, :name)
    end
end
