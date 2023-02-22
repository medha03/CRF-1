class IonChromotographiesController < ApplicationController
  before_action :set_ion_chromotography, only: %i[ show edit update destroy ]

  # GET /ion_chromotographies or /ion_chromotographies.json
  def index
    @ion_chromotographies = IonChromotography.all
  end

  # GET /ion_chromotographies/1 or /ion_chromotographies/1.json
  def show
  end

  # GET /ion_chromotographies/new
  def new
    @ion_chromotography = IonChromotography.new
  end

  # GET /ion_chromotographies/1/edit
  def edit
  end

  # POST /ion_chromotographies or /ion_chromotographies.json
  def create
    @ion_chromotography = IonChromotography.new(ion_chromotography_params)

    respond_to do |format|
      if @ion_chromotography.save
        format.html { redirect_to ion_chromotography_url(@ion_chromotography), notice: "Ion chromotography was successfully created." }
        format.json { render :show, status: :created, location: @ion_chromotography }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ion_chromotography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ion_chromotographies/1 or /ion_chromotographies/1.json
  def update
    respond_to do |format|
      if @ion_chromotography.update(ion_chromotography_params)
        format.html { redirect_to ion_chromotography_url(@ion_chromotography), notice: "Ion chromotography was successfully updated." }
        format.json { render :show, status: :ok, location: @ion_chromotography }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ion_chromotography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ion_chromotographies/1 or /ion_chromotographies/1.json
  def destroy
    @ion_chromotography.destroy

    respond_to do |format|
      format.html { redirect_to ion_chromotographies_url, notice: "Ion chromotography was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ion_chromotography
      @ion_chromotography = IonChromotography.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ion_chromotography_params
      params.require(:ion_chromotography).permit(:sample, :nature, :solvent, :volume, :concentration, :eluent, :analysis, :elements, :column, :flow_rate, :temperature, :detector, :toxicity, :hazards, :disposal, :more)
    end
end