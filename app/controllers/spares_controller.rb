class SparesController < ApplicationController
  before_action :set_spare, only: [:show, :edit, :update, :destroy]

  # GET /spares
  # GET /spares.json
  def index
    @spares = Spare.all
  end

  # GET /spares/1
  # GET /spares/1.json
  def show
  end

  # GET /spares/new
  def new
    @spare = Spare.new
  end

  # GET /spares/1/edit
  def edit
  end

  # POST /spares
  # POST /spares.json
  def create
    @spare = Spare.new(spare_params)

    respond_to do |format|
      if @spare.save
        format.html { redirect_to @spare, notice: 'spare was successfully created.' }
        format.json { render :show, status: :created, location: @spare }
      else
        format.html { render :new }
        format.json { render json: @spare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spares/1
  # PATCH/PUT /spares/1.json
  def update
    respond_to do |format|
      if @spare.update(spare_params)
        format.html { redirect_to @spare, notice: 'spare was successfully updated.' }
        format.json { render :show, status: :ok, location: @spare }
      else
        format.html { render :edit }
        format.json { render json: @spare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spares/1
  # DELETE /spares/1.json
  def destroy
    @spare.destroy
    respond_to do |format|
      format.html { redirect_to spares_url, notice: 'spare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spare
      @spare = Spare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spare_params
      params.require(:spare).permit(:name, :price, :description, announcement_images: [])
    end
end
