class Statement < ActiveRecord::Base
  has_many :occurences
  has_many :words, through: :occurences
end