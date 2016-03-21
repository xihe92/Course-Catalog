class CsrelationsController < ApplicationController
  before_action :require_login
  before_action :set_csrelation, only: [:show, :edit, :update, :destroy]

  # GET /csrelations
  # GET /csrelations.json
  def index
    @csrelations = Csrelation.all
  end

  # GET /csrelations/1
  # GET /csrelations/1.json
  def show
  end

  # GET /csrelations/new
  def new
    @csrelation = Csrelation.new
  end

  # GET /csrelations/1/edit
  def edit
  end

  # POST /csrelations
  # POST /csrelations.json
  def create
    @csrelation = Csrelation.new(csrelation_params)

    respond_to do |format|
      if @csrelation.save
        format.html { redirect_to @csrelation, notice: 'Csrelation was successfully created.' }
        format.json { render :show, status: :created, location: @csrelation }
      else
        format.html { render :new }
        format.json { render json: @csrelation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csrelations/1
  # PATCH/PUT /csrelations/1.json
  def update
    respond_to do |format|
      if @csrelation.update(csrelation_params)
        format.html { redirect_to @csrelation, notice: 'Csrelation was successfully updated.' }
        format.json { render :show, status: :ok, location: @csrelation }
      else
        format.html { render :edit }
        format.json { render json: @csrelation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csrelations/1
  # DELETE /csrelations/1.json
  def destroy
    @csrelation.destroy
    respond_to do |format|
      format.html { redirect_to csrelations_url, notice: 'Csrelation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csrelation
      @csrelation = Csrelation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csrelation_params
      params.require(:csrelation).permit(:c_code, :s_id, :c_name)
    end
end
