class Api::ServicesController < ApplicationController
  before_action :authorize_request
  
  # GET /services
  def index
    @services = Service.all

    render json: @services
  end
  
end
