class PlacesController < ApplicationController

  def index
    @places = HTTParty.get ('http://localhost:3000/places')
    render :index
  end

  def show
    @places = HTTParty.show ('http://localhost:3000/places/'+params[:id])
    :show
  end

  private
  def places_params
    params.fetch(:places, {})
  end
end
