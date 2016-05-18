class HomeinfosController < ApplicationController
  def show
    homeinfo_data = HomeinfoDatum.all
    @humidity = homeinfo_data.map { |item| [Time.parse(item.dateandtime), item.humidity] }
    @temperature = homeinfo_data.map { |item| [Time.parse(item.dateandtime), item.temperature] }
  end
end
