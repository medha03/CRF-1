class ScratchIndentationsController < ApplicationController
  before_action :set_scratch_indentation, only: %i[ show edit update destroy ]

  # GET /scratch_indentations or /scratch_indentations.json
  def index
    @scratch_indentations = ScratchIndentation.all
  end

  # GET /scratch_indentations/1 or /scratch_indentations/1.json
  def show
  end

  # GET /scratch_indentations/new
  def new
    @scratch_indentation = ScratchIndentation.new
  end

  # GET /scratch_indentations/1/edit
  def edit
  end

  # POST /scratch_indentations or /scratch_indentations.json
  def create
    @scratch_indentation = ScratchIndentation.new(scratch_indentation_params)

    respond_to do |format|
      if @scratch_indentation.save
        format.html { redirect_to scratch_indentation_url(@scratch_indentation), notice: "Scratch indentation was successfully created." }
        format.json { render :show, status: :created, location: @scratch_indentation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scratch_indentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scratch_indentations/1 or /scratch_indentations/1.json
  def update
    respond_to do |format|
      if @scratch_indentation.update(scratch_indentation_params)
        format.html { redirect_to scratch_indentation_url(@scratch_indentation), notice: "Scratch indentation was successfully updated." }
        format.json { render :show, status: :ok, location: @scratch_indentation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scratch_indentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scratch_indentations/1 or /scratch_indentations/1.json
  def destroy
    @scratch_indentation.destroy

    respond_to do |format|
      format.html { redirect_to scratch_indentations_url, notice: "Scratch indentation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scratch_indentation
      @scratch_indentation = ScratchIndentation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scratch_indentation_params
      params.require(:scratch_indentation).permit(:sample, :type, :measurement, :stroke, :number_indentation, :constant_load, :increment_load, :progressive_load, :temperature, :analysis, :more)
    end
end