class CitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    # @url = 'https://api.openweathermap.org/data/2.5/forecast?units=metric&id=524901&appid=ee281cfabf1ec4cff7712dacc69ff59f'
    # @paris = 'https://api.openweathermap.org/data/2.5/onecall?lat=48.856614&lon=2.3522219&units=metric&exclude=minutely,alerts&appid=10dfbd8979e309323758e2b9b08bd982'
    # @uri = URI(@paris)
    # @response = Net::HTTP.get(@uri)
    # @paris_output = JSON.parse(@response)

    # @london = 'https://api.openweathermap.org/data/2.5/onecall?lat=51.5073509&lon=-0.1277583&units=metric&exclude=minutely,alerts&appid=ee281cfabf1ec4cff7712dacc69ff59f'
    # @uri = URI(@london)
    # @response = Net::HTTP.get(@uri)
    # @london_output = JSON.parse(@response)

    # @reykjavik = 'https://api.openweathermap.org/data/2.5/onecall?lat=64.128288&lon=-21.827774&units=metric&exclude=minutely,alerts&appid=ee281cfabf1ec4cff7712dacc69ff59f'
    # @uri = URI(@reykjavik)
    # @response = Net::HTTP.get(@uri)
    # @reykjavik_output = JSON.parse(@response)

    # @cities = City.all
    @cities = City.where("name ILIKE ?", "%#{params[:name]}%") if params[:name].present?
  end

  def show
    @city = City.find(params[:id])
  end
end
