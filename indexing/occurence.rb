class Occurence < ActiveRecord::Base
  belongs_to :statement
  belongs_to :word
end