# -*- coding: utf-8 -*-
module Ucms
  class Type < ActiveRecord::Base
    attr_accessible :name, :code
    has_many :articles, class_name: "Ucms::Article"
    # 文字、图片、下载
  end
end
