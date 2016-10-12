class Seat < ActiveRecord::Base
  belongs_to :tickets
  belongs_to :categories
end
