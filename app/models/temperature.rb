class Temperature < ActiveRecord::Base
  has_one :homeinfo_datum
end
