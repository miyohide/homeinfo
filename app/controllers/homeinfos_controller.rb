class HomeinfosController < ApplicationController
  def show
    homeinfo_data = HomeinfoDatum.all.includes(:humidity, :temperature)
    @humidity = homeinfo_data.map { |item| [item.dateandtime, item.humidity.humidity] }
    @temperature = homeinfo_data.map { |item| [item.dateandtime, item.temperature.temperature] }
  end
end