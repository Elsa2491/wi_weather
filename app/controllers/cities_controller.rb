class CitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @cities = City.where("name ILIKE ?", "%#{params[:name]}%") if params[:name].present?
  end

  def show
    @city = City.find(params[:id])
  end
end
