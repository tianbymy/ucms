module Ucms
  class Links < ActiveRecord::Base
    attr_accessible :name, :url, :image,:start_time,:end_time, :owner, :description

  end
end
