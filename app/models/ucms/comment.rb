# -*- coding: utf-8 -*-
module Ucms
  class Comment < ActiveRecord::Base
    attr_accessible :user_id, :name, :content
    belongs_to :article, class_name: "Ucms::Article"
    # 状态： 通过、未通过
  end
end
