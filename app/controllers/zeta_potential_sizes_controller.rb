class ZetaPotentialSizesController < ApplicationController
  before_action :set_zeta_potential_size, only: %i[ show edit update destroy ]

  # GET /zeta_potential_sizes or /zeta_potential_sizes.json
  def index
    @zeta_potential_sizes = ZetaPotentialSize.all
  end

  # GET /zeta_potential_sizes/1 or /zeta_potential_sizes/1.json
  def show
  end

  # GET /zeta_potential_sizes/new
  def new
    @zeta_potential_size = ZetaPotentialSize.new
  end

  # GET /zeta_potential_sizes/1/edit
  def edit
  end

  # POST /zeta_potential_sizes or /zeta_potential_sizes.json
  def create
    @zeta_potential_size = ZetaPotentialSize.new(zeta_potential_size_params)

    respond_to do |format|
      if @zeta_potential_size.save
        format.html { redirect_to zeta_potential_size_url(@zeta_potential_size), notice: "Zeta potential size was successfully created." }
        format.json { render :show, status: :created, location: @zeta_potential_size }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @zeta_potential_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zeta_potential_sizes/1 or /zeta_potential_sizes/1.json
  def update
    respond_to do |format|
      if @zeta_potential_size.update(zeta_potential_size_params)
        format.html { redirect_to zeta_potential_size_url(@zeta_potential_size), notice: "Zeta potential size was successfully updated." }
        format.json { render :show, status: :ok, location: @zeta_potential_size }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @zeta_potential_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zeta_potential_sizes/1 or /zeta_potential_sizes/1.json
  def destroy
    @zeta_potential_size.destroy

    respond_to do |format|
      format.html { redirect_to zeta_potential_sizes_url, notice: "Zeta potential size was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zeta_potential_size
      @zeta_potential_size = ZetaPotentialSize.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def zeta_potential_size_params
      params.require(:zeta_potential_size).permit(:sample, :type, :toxicity, :element, :solvent, :refractive_index, :viscosity, :solute, :angle, :analysis_type, :analysis_temperature, :more)
    end
end