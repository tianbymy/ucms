# -*- coding: utf-8 -*-
module Ucms
  require "ancestry"
  class Ads < ActiveRecord::Base
    attr_accessible :name, :parnet_id, :size,
          :url, :image, :start_time, :end_time, :owner, :description
    has_ancestry

    def self.get_size
      {id: 1,size: "960x170",description: "大图广告位"}
    end


  end
end
