Ship
  5 cells
  Vertical or Horizontal, not diagonal

Representations:
  1. Array[coordinates]  #=> [[x,y], [x1,y1]]
  2. Array[Cells]
  3. StartingCoordinate, Direction, Length
  4. StartingCoordinate, EndingCoordinate

Create Random:
  # 1a.  StartingCoord: x = (0..width_of_grid-max_length_of_ship).sample,
  #                     y = (0..length_of_grid-max_length_of_ship).sample
                      x = Rand(ocean.width-max_length_of_ship)
                      y = Rand(ocean.length-max_length_of_ship)


Hit?
    # Pseudo-code
    current_guess = cell.at(guessed_x,guessed_y)
    # Cell.where(key: value)
    current_cell.mark_as_hit_miss


    def mark_as_hit_miss
      if cell.ship?
        cell.mark_guess = :hit
      else
         cell.mark_guess = :miss
        end
    end


Build a ship:
  # ocean setup
  # app.rb
  atlantic = Ocean.create(..) # hash of attributes
  atlantic.build_cells
  number_of_ships.times do
    atlantic.build_random_ship
  end
end

  class Ocean
    def build_random_ship
      # random coordinates within safe creation zone
      # random direction (Horiz/Vert)
      # Fixed Length
      # associate with ocean, save to db
      # assign_to_cells
      random_x = Rand(see notes above)
      random_y = Rand(see notes above)

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
        length: 5)

      new_ship.assign_to_cells
    end

  end

  class Ship
    def assign_to_cells
      # loop thru x,y coords for this ship
      # find that cell
      # add to ship.cells


      starting_cell =  Cell.find_by(x: starting_x, y: starting_y)
      cells << starting_cell

      # calc offset from direction
      if direction == :horizontal
        x_offset = 1
        y_offset = 0
      else #vertical
        x_offset = 0
        y_offset = 1
      end


      x = starting_x
      y = starting_y
      length.times do
        found_cell = Cell.find_by(x: x, y: y)
        self.cells << found_cell
        x += x_offset
        y += y_offset
      end
    end
  end
