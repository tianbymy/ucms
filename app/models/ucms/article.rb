# -*- coding: utf-8 -*-
module Ucms
  class Article < ActiveRecord::Base
    attr_accessible :name, :content
    belongs_to :category, class_name: "Ucms::Category"
    has_many :comments, class_name: "Ucms::Comment"

    #状态： 未发布、已发布(有效期)、已下架
  end
end
