class CarrotsController < ApplicationController
  before_action :set_carrot, only: %i[ show update destroy ]

  # GET /carrots
  def index
    @carrots = Carrot.all

    render json: @carrots
  end

  # GET /carrots/1
  def show
    render json: @carrot
  end

  # POST /carrots
  def create
    @carrot = Carrot.new(carrot_params)

    if @carrot.save
      render json: @carrot, status: :created, location: @carrot
    else
      render json: @carrot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carrots/1
  def update
    if @carrot.update(carrot_params)
      render json: @carrot
    else
      render json: @carrot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carrots/1
  def destroy
    @carrot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrot
      @carrot = Carrot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carrot_params
      params.require(:carrot).permit(:name, :description, :price, :stock, :supplier_id)
    end
end
