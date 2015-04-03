require 'pry'
require 'active_record'
require_relative '../db/connection'
require_relative 'cell'
require_relative 'ship'
require_relative 'ocean'
require_relative 'linebreak'
require_relative 'string_gets'


# 10.times do(|a,b| 0..9)
#   puts [a,b]
# end
class Ocean < ActiveRecord::Base
  has_many :cells, dependent: :destroy
  has_many :ships, dependent: :destroy

  # Active Record .after_create after creation call a method

  def widthcell
    10
  end

  def length
    10
  end


  #adams build cells
  def build_cells

    #[10] pry(main)> my_ocean = Ocean.create(name: "balhasdads", size: 10)
    #my_ocean.builds_cells

    cells_x = [0,1,2,3,4,5,6,7,8,9] # (0..ocean.size-1)
    cells_y = [0,1,2,3,4,5,6,7,8,9]

    cells_x.each do|x|
      cells_y.each do |y|

        self.cells.create(x: x, y: y)

      end
    end

    return self.cells
  end


  def build_random_ship
    all_ships = Ship.all
    all_oceans = Ocean.all




    all_ships.each do |ship|
      all_oceans.each do |oceans|

      random_x = rand(0..oceans.size - ship.ship_size)
      random_y = rand(0..oceans.size - ship.ship_size)
      #binding.pry
    end


    end

    # random coordinates within safe creation zone
    # random direction (Horiz/Vert)
    # Fixed Length
    # associate with ocean, save to db
    # assign_to_cells

    # random_x = Rand(see notes above)
    # random_y = Rand(see notes above)



    random_dir = case Rand(1).round # 0 or 1
    when 0
      :horizontal
    when 1
      :vertical

    end


    new_ship = Ship.create(
    starting_x: random_x,
    starting_y: random_y,
    direction: random_dir,
    name: "Saul",
    sunk?: false,
    length: 5)

    new_ship.assign_to_cells


  end


  # def create_ships
  #
  #   Ship.ships_location(0,1,2,3,4,5,6,7,8,9)
  #
  #   Ship.ship_direction
  #
  #   self.cells.create(ship_x:,ship_y: )
  #
  # end







end
