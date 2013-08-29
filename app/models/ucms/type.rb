module Ucms
  class Type < ActiveRecord::Base
    attr_accessible :name, :code
    has_many :articles, class_name: "Ucms::Article"
  end
end
