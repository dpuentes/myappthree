class CaloriesController < ApplicationController
  before_action :set_calory, only: %i[ show edit update destroy ]

  # GET /calories or /calories.json
  def index
    @calories = Calory.all
  end

  # GET /calories/1 or /calories/1.json
  def show
  end

  # GET /calories/new
  def new
    @calory = Calory.new
  end

  # GET /calories/1/edit
  def edit
  end

  # POST /calories or /calories.json
  def create
    @calory = Calory.new(calory_params)

    respond_to do |format|
      if @calory.save
        format.html { redirect_to @calory, notice: "Calory was successfully created." }
        format.json { render :show, status: :created, location: @calory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calories/1 or /calories/1.json
  def update
    respond_to do |format|
      if @calory.update(calory_params)
        format.html { redirect_to @calory, notice: "Calory was successfully updated." }
        format.json { render :show, status: :ok, location: @calory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calories/1 or /calories/1.json
  def destroy
    @calory.destroy
    respond_to do |format|
      format.html { redirect_to calories_url, notice: "Calory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calory
      @calory = Calory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calory_params
      params.require(:calory).permit(:date_registre, :Calory_type, :Value, :float)
    end
end
