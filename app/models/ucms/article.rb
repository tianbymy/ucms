module Ucms
  class Article < ActiveRecord::Base
    attr_accessible :name, :content
    belongs_to :category,class_name: "Ucms::Category"
  end
end
