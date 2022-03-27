class CitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    # @cities = City.all
    # @url = 'https://api.openweathermap.org/data/2.5/forecast?lang=fr&units=metric&id=524901&appid=ee281cfabf1ec4cff7712dacc69ff59f'
    @url = 'https://api.openweathermap.org/data/2.5/onecall?lat=48.856614&lon=2.3522219&lang=fr&units=metric&exclude=minutely,alerts&appid=10dfbd8979e309323758e2b9b08bd982'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
  end

  def show
    @city = City.find(params[:id])
  end
end
