class Ship < ActiveRecord::Base
  has_many :cells, dependent: :destroy
  belongs_to :ocean

  def ships_location
    cells_x = [0,1,2,3,4,5,6,7,8,9]#short term fix for border, change to 4 & 5
    cells_y = [0,1,2,3,4,5,6,7,8,9]#short term fix for border, change to 4 & 5
    cells_array = []
    random_selection = []

    cells_x.each do |x|
      cells_y.each do |y|
        cells_array << x
        cells_array << y

        random_selection = cells_array.sample(4)

        return random_selection
      end
    end
  end

  #random_selection = ships_location.sample(4)

  # ship_loc1 = random_selection[0..1]
  # ship_loc2 = random_selection[2..4]




  # assign random ship location to ship_loc1 and ship_loc2
  # random_selection (array) is the random ship location
  # take the first 2 elements to ship1
  # take the last 2 elements to ship2



  def ship_direction

    ship_direction = ["up","down", "left", "right"]

    selected_direction = ship_direction.sample(1)
    return selected_direction
  end

  def ship_cell_assignment

    ship1_loc_begin = ship_location[0..1]#ship_location contains 4 points, 2 for each ship starter location

    if selected_direction == "up"
      ship1_loc1_end = ship1_loc_begin[0], ship1_loc_begin[1] += 1
      ship1_loc2_end = ship1_loc_begin[0], ship1_loc_begin[1] += 2
      ship1_loc3_end = ship1_loc_begin[0], ship1_loc_begin[1] += 3
      ship1_loc4_end = ship1_loc_begin[0], ship1_loc_begin[1] += 4
      # ship_loc1_end = ship_loc1_begin[0], ship_loc1_begin[1] += 1
      # ship_loc1_end = ship_loc1_begin[0], ship_loc1_begin[1] += 2
      # ship_loc1_end = ship_loc1_begin[0], ship_loc1_begin[1] += 3
      # ship_loc1_end = ship_loc1_begin[0], ship_loc1_begin[1] += 4
      # ship_loc1_end = ship_loc1_begin[0], ship_loc1_begin[1] += 5
    elsif selected_direction == "down"
      ship1_loc1_end = ship1_loc_begin[0], ship1_loc_begin[1] -= 1
      ship1_loc2_end = ship1_loc_begin[0], ship1_loc_begin[1] -= 2
      ship1_loc3_end = ship1_loc_begin[0], ship1_loc_begin[1] -= 3
      ship1_loc4_end = ship1_loc_begin[0], ship1_loc_begin[1] -= 4
    elsif selected_direction == "left"
      ship1_loc1_end = ship1_loc_begin[0] -= 1, ship1_loc_begin[1]
      ship1_loc2_end = ship1_loc_begin[0] -= 2, ship1_loc_begin[1]
      ship1_loc3_end = ship1_loc_begin[0] -= 3, ship1_loc_begin[1]
      ship1_loc4_end = ship1_loc_begin[0] -= 4, ship1_loc_begin[1]
    else #selected_direction == "right"
      ship1_loc1_end = ship1_loc_begin[0] -= 1, ship1_loc_begin[1]
      ship1_loc2_end = ship1_loc_begin[0] -= 2, ship1_loc_begin[1]
      ship1_loc3_end = ship1_loc_begin[0] -= 3, ship1_loc_begin[1]
      ship1_loc4_end = ship1_loc_begin[0] -= 4, ship1_loc_begin[1]
    end



    ship1_loc_array = []
    ship1_loc_array << ship1_loc_begin
    ship1_loc_array << ship1_loc1_end
    ship1_loc_array << ship1_loc2_end
    ship1_loc_array << ship1_loc3_end
    ship1_loc_array << ship1_loc4_end


  end



  selected_direction2 = ship_direction.sample(1)

  ship_loc2_begin = random_selection[2..4]
  if selected_direction2 == "up"
    ship_loc2_end = ship_loc2_begin[0], ship_loc2_begin[1] += 5
  elsif selected_direction2 == "down"
    ship_loc2_end = ship_loc2_begin[0], ship_loc2_begin[1] -= 5
  elsif selected_direction2 == "left"
    ship_loc2_end = ship_loc2_begin[0] -= 5, ship_loc2_begin[1]
  else #selected_direction == "right"
    ship_loc2_end = ship_loc2_begin[0] += 5, ship_loc2_begin[1]
  end

  # if selected_direction2 == "up"
  #   ship_loc2_begin[1] +=5
  #   #add consecutively to array
  # elsif selected_direction2 == "down"
  #   ship_loc2_begin[1] -=5
  # elsif selected_direction == "left"
  #   ship_loc2_begin[0] -=5
  # else #selected_direction == "right"
  #   ship_loc2_begin[0] +=5
  # end


end



# cells_x = [0,1,2,3,4,5,6,7,8,9]
#   cells_y = [0,1,2,3,4,5,6,7,8,9]
#   cells = []
#
#   x.each do|a|
#     y.each do |b|
#       cells.push [a,b]
#       end
#     end
