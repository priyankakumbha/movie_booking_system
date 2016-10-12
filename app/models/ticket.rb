class Ticket < ActiveRecord::Base
  belongs_to :movie
  has_many :seats
  has_many :foods, :through => :seats
end
