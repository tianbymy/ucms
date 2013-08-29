# -*- coding: utf-8 -*-
module Ucms
  require "ancestry"
  class Category < ActiveRecord::Base
    attr_accessible :name,:parent_id

    validates_presence_of :name, :message => "不能为空"
    validates_uniqueness_of  :name, :message => "不能重复"
    # 同一父级的组织名不能重复
    validate { errors.add(:name, :taken) if siblings.reject{|x| x if x.id == self.id}.map(&:name).include?(self.name) }

    has_many :articles,class_name: 'Ucms::Article'

    has_ancestry


    def fullname
      return name unless parent
      parent.fullname + "/" + name
    end

  end
end
