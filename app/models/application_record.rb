class ApplicationRecord < ActiveRecord::Base
  extend BatchPurger
  self.abstract_class = true
end
