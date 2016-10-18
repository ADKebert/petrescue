class AdoptersController < ApplicationController
  before_action :set_adopter, only: [:show, :update, :destroy]

  # GET /adopters
  def index
    @adopters = Adopter.all.sort_by(:lname)

    render json: @adopters
  end

  # GET /adopters/1
  def show
    render json: @adopter
  end

  # POST /adopters
  def create
    @adopter = Adopter.new(adopter_params)

    if @adopter.save
      render json: @adopter, status: :created, location: @adopter
    else
      render json: @adopter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adopters/1
  def update
    if @adopter.update(adopter_params)
      render json: @adopter
    else
      render json: @adopter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adopters/1
  def destroy
    @adopter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adopter
      @adopter = Adopter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adopter_params
      params.require(:adopter).permit(:fname, :lname, :phone, :email)
    end
end
