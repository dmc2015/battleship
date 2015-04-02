# 10.times do(|a,b| 0..9)
#   puts [a,b]
# end
class Ocean < ActiveRecord::Base
  has_many :cells, dependent: :destroy
  has_many :ships, dependent: :destroy

  # Active Record .after_create after creation call a method


  #adams build cells
  def builds_cells
    cells_x = [0,1,2,3,4,5,6,7,8,9]
    cells_y = [0,1,2,3,4,5,6,7,8,9]

    cells_x.each do|x|
      cells_y.each do |y|

        self.cells.create(x: x, y: y)

      end
    end

    return self.cells
  end

  def






end
