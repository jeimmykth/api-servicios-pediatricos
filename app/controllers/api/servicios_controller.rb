class Api::ServiciosController < ApplicationController

  # GET /servicios
  def index
    @servicios = Servicio.all

    render json: @servicios
  end
  
end
