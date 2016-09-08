class HomeinfoDatum < ActiveRecord::Base
  def self.last_runlogs
    max_run_count = HomeinfoDatum.maximum('run_count')
    HomeinfoDatum.where(run_count: max_run_count)
  end

end
