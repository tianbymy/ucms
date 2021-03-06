# -*- coding: utf-8 -*-
module Ucms
  require "ancestry"
  class Category < ActiveRecord::Base
    attr_accessible :name,:parent_id

    validates_presence_of :name, :message => "不能为空"
    # 同级的分类名不能重复
    validate { errors.add(:name, "同级别分类已经存在【#{name}】，请修改") if siblings.reject{|x| x if x.id == self.id}.map(&:name).include?(self.name) }

    has_many :articles,class_name: 'Ucms::Article'

    has_ancestry


    def fullname
      return name unless parent
      parent.fullname + "/" + name
    end

  end
end
