class Carrot < ApplicationRecord
  belongs_to :supplier

  has_many :cartings
end
