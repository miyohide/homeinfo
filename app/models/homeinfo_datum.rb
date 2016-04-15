class HomeinfoDatum < ActiveRecord::Base
  belongs_to :humidity
  belongs_to :temperature
end
