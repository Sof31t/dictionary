class Word < ActiveRecord::Base
  has_many :occurences
  has_many :statements, through: :occurences
end