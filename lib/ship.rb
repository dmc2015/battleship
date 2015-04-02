class Ship < ActiveRecord::Base
  has_many :cells, dependent: :destroy
  belongs_to :ocean







  # attr_accessor :length :name :sunk?
  # def initiaialize(length, name, sunk?)
  #   @length = length
  #   @name = name
  #   @sunk = sunk
  # end

end



cells_x = [0,1,2,3,4,5,6,7,8,9]
#   cells_y = [0,1,2,3,4,5,6,7,8,9]
#   cells = []
#
#   x.each do|a|
#     y.each do |b|
#       cells.push [a,b]
#       end
#     end
