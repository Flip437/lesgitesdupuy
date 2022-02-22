class Admin::CottagesController < ApplicationController
  before_action :set_admin_cottage, only: %i[ show edit update destroy ]

  # GET /admin/cottages or /admin/cottages.json
  def index
    @admin_cottages = Admin::Cottage.all
  end

  # GET /admin/cottages/1 or /admin/cottages/1.json
  def show
  end

  # GET /admin/cottages/new
  def new
    @admin_cottage = Admin::Cottage.new
  end

  # GET /admin/cottages/1/edit
  def edit
  end

  # POST /admin/cottages or /admin/cottages.json
  def create
    @admin_cottage = Admin::Cottage.new(admin_cottage_params)

    respond_to do |format|
      if @admin_cottage.save
        format.html { redirect_to admin_cottage_url(@admin_cottage), notice: "Cottage was successfully created." }
        format.json { render :show, status: :created, location: @admin_cottage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_cottage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/cottages/1 or /admin/cottages/1.json
  def update
    respond_to do |format|
      if @admin_cottage.update(admin_cottage_params)
        format.html { redirect_to admin_cottage_url(@admin_cottage), notice: "Cottage was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_cottage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_cottage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/cottages/1 or /admin/cottages/1.json
  def destroy
    @admin_cottage.destroy

    respond_to do |format|
      format.html { redirect_to admin_cottages_url, notice: "Cottage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_cottage
      @admin_cottage = Admin::Cottage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_cottage_params
      params.fetch(:admin_cottage, {}).permit(:name)
    end
end
