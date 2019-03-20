class Api::PopularitiesController < ApplicationController
  before_action :set_popularity, only: [:show, :update, :destroy]
  before_action :authorize_request

  # GET /popularities
  def index
    @popularities = Popularity.all

    render json: @popularities
  end

  # GET /popularities/1
  def show
    render json: @popularity
  end

  # POST /popularities
  def create
    @popularity = Popularity.new(popularity_params)

    if @popularity.save
      render json: @popularity, status: :created
    else
      render json: @popularity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /popularities/1
  def update
    if @popularity.update(popularity_params)
      render json: @popularity
    else
      render json: @popularity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /popularities/1
  def destroy
    @popularity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_popularity
      @popularity = Popularity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def popularity_params
      params.require(:popularity).permit(:doctor_id, :user_id, :stars)
    end
end
