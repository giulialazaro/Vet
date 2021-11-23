class RacasController < ApplicationController
  before_action :set_raca, only: %i[ show edit update destroy ]

  # GET /racas or /racas.json
  def index
    @racas = Raca.all
  end

  # GET /racas/1 or /racas/1.json
  def show
  end

  # GET /racas/new
  def new
    @raca = Raca.new
  end

  # GET /racas/1/edit
  def edit
  end

  # POST /racas or /racas.json
  def create
    @raca = Raca.new(raca_params)

    respond_to do |format|
      if @raca.save
        format.html { redirect_to @raca, notice: "Raca was successfully created." }
        format.json { render :show, status: :created, location: @raca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @raca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /racas/1 or /racas/1.json
  def update
    respond_to do |format|
      if @raca.update(raca_params)
        format.html { redirect_to @raca, notice: "Raca was successfully updated." }
        format.json { render :show, status: :ok, location: @raca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @raca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /racas/1 or /racas/1.json
  def destroy
    @raca.destroy
    respond_to do |format|
      format.html { redirect_to racas_url, notice: "Raca was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raca
      @raca = Raca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raca_params
      params.require(:raca).permit(:descricao)
    end
end
