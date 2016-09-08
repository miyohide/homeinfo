class HomeinfosController < ApplicationController
  def show
    homeinfo_data = HomeinfoDatum.last_runlogs
    @run_count = homeinfo_data.first.run_count
    @humidity = homeinfo_data.map { |item| [Time.parse(item.dateandtime), item.humidity] }
    @temperature = homeinfo_data.map { |item| [Time.parse(item.dateandtime), item.temperature] }
    @ido_data = homeinfo_data.map { |item| [Time.parse(item.dateandtime), item.ido] }
    @keido_data = homeinfo_data.map { |item| [Time.parse(item.dateandtime), item.keido] }
  end
end
