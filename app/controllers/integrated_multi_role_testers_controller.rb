class IntegratedMultiRoleTestersController < ApplicationController
  before_action :set_integrated_multi_role_tester, only: %i[ show edit update destroy ]

  # GET /integrated_multi_role_testers or /integrated_multi_role_testers.json
  def index
    @integrated_multi_role_testers = IntegratedMultiRoleTester.all
  end

  # GET /integrated_multi_role_testers/1 or /integrated_multi_role_testers/1.json
  def show
  end

  # GET /integrated_multi_role_testers/new
  def new
    @integrated_multi_role_tester = IntegratedMultiRoleTester.new
  end

  # GET /integrated_multi_role_testers/1/edit
  def edit
  end

  # POST /integrated_multi_role_testers or /integrated_multi_role_testers.json
  def create
    @integrated_multi_role_tester = IntegratedMultiRoleTester.new(integrated_multi_role_tester_params)

    respond_to do |format|
      if @integrated_multi_role_tester.save
        format.html { redirect_to integrated_multi_role_tester_url(@integrated_multi_role_tester), notice: "Integrated multi role tester was successfully created." }
        format.json { render :show, status: :created, location: @integrated_multi_role_tester }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @integrated_multi_role_tester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /integrated_multi_role_testers/1 or /integrated_multi_role_testers/1.json
  def update
    respond_to do |format|
      if @integrated_multi_role_tester.update(integrated_multi_role_tester_params)
        format.html { redirect_to integrated_multi_role_tester_url(@integrated_multi_role_tester), notice: "Integrated multi role tester was successfully updated." }
        format.json { render :show, status: :ok, location: @integrated_multi_role_tester }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @integrated_multi_role_tester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /integrated_multi_role_testers/1 or /integrated_multi_role_testers/1.json
  def destroy
    @integrated_multi_role_tester.destroy

    respond_to do |format|
      format.html { redirect_to integrated_multi_role_testers_url, notice: "Integrated multi role tester was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_integrated_multi_role_tester
      @integrated_multi_role_tester = IntegratedMultiRoleTester.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def integrated_multi_role_tester_params
      params.require(:integrated_multi_role_tester).permit(:sample, :measurement, :type, :loading, :temperature, :analysis, :more)
    end
end