class CartingsController < ApplicationController
  before_action :set_carting, only: %i[ show update destroy ]

  # GET /cartings
  def index
    @cartings = Carting.all

    render json: @cartings
  end

  # GET /cartings/1
  def show
    render json: @carting
  end

  # POST /cartings
  def create
    @carting = Carting.new(carting_params)

    if @carting.save
      render json: @carting, status: :created, location: @carting
    else
      render json: @carting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cartings/1
  def update
    if @carting.update(carting_params)
      render json: @carting
    else
      render json: @carting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cartings/1
  def destroy
    @carting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carting
      @carting = Carting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carting_params
      params.require(:carting).permit(:carrot_id, :quantity, :total, :order_id)
    end
end
