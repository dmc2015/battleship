require 'active_record'
require_relative 'connection'
require_relative '../lib/ocean'
require_relative '../lib/cell'
#require_relative '../lib/random_binary'
require_relative '../lib/ship'
# require_relative '../lib/ship_cells'
# require_relative '../lib/ship_cells'

#bundle exec ruby

cells_x = [0,1,2,3,4,5,6,7,8,9]
cells_y = [0,1,2,3,4,5,6,7,8,9]
#
# # @cells_x = cells_x
# # @cells_y = cells_y
#
# x = [0,1,2,3,4,5,6,7,8,9]
# y = [0,1,2,3,4,5,6,7,8,9]


# Ocean.destroy_all
#
ocean = Ocean.create([
  {name: "Atlantic", size: "10x10"}
  ])





  cells_x.each do |x|
    cells_y.each do |y|
      atlantic = Ocean.find_by(name: "Atlantic")
      atlantics_ships = atlantic.cells.create([
        (x:x, y:y)



        ])
      end
    end

    cells_array = []
    random_selection = []

    cells_x.each do |x|
      cells_y.each do |y|
        cells_array << x
        cells_array << y

        random_selection = cells_array.sample(4)
      end
    end

    ship_loc1 = random_selection[0..1]
    ship_loc2 = random_selection[2..4]


    random_selection do |x,y,w,z|

      ship_loc1 = "x,y"
      ship_loc2 = "w,z"
    end

    ship_loc1 = random_selection.take(2)
    ship_loc2 = random_selection.pop(2)


    # assign random ship location to ship_loc1 and ship_loc2
    # random_selection (array) is the random ship location
    # take the first 2 elements to ship1
    # take the last 2 elements to ship2

    random_selection

    random_selection[0..1]


    ocean.ship?s = []


    ship_direction = ["up","down", "left", "right"]

    selected_direction1 = ship_direction.sample(1)

    ship_loc1_begin = random_selection[0..1]

    if selected_direction1 == "up"
      ship_loc1_end = ship_loc1_begin[0], ship_loc1_begin[1] += 5
    elsif selected_direction1 == "down"
      ship_loc1_end = ship_loc1_begin[0], ship_loc1_begin[1] -= 5
    elsif selected_direction1 == "left"
      ship_loc1_end = ship_loc1_begin[0] -= 5, ship_loc1_begin[1]
    else #selected_direction == "right"
      ship_loc1_end = ship_loc1_begin[0] += 5, ship_loc1_begin[1]
    end

    selected_direction2 = ship_direction.sample(1)

    ship_loc2_begin = random_selection[2..4]
    if selected_direction1 == "up"
      ship_loc2_end = ship_loc2_begin[0], ship_loc2_begin[1] += 5
    elsif selected_direction1 == "down"
      ship_loc2_end = ship_loc2_begin[0], ship_loc2_begin[1] -= 5
    elsif selected_direction1 == "left"
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








    puts random_selection
    ships = [[1,1,1,1,1]]
    ships2 = [[1,1,1,1,1]]

    ships.select { |num|}


    ships

    atlantic = Ocean.find_by(name: "Atlantic")
    atlantics_ships = atlantic.cells.create([
      {ship?: true, hit?: true}
      ])


      atlantic = Ocean.find_by(name: "Atlantic")
      atlantics_ships = atlantic.ships.create([
        {name: "dorothy" ,sunk?: false}
        # {}
        # {}
        ])





























































        #
        #
        # cells_x = [0,1,2,3,4,5,6,7,8,9]
        # cells_y = [0,1,2,3,4,5,6,7,8,9]
        # cells = []
        #
        #
        # cells_x.each do |x|
        #   cells_y.each do |y|
        #   cells.create(x:x, y:y)
        #   end
        # end
        #
        #   x do |i|
        #     cells.create(:x => i )
        #     y do |k|
        #       cells.create(:y => k)
        #
        #     end
        #   end
        #
        #   , y: , ship?: }
        # end
        #
        # ])
        #
        #   cells_x = [0,1,2,3,4,5,6,7,8,9]
        #   cells_y = [0,1,2,3,4,5,6,7,8,9]
        #   cells = []
        #
        #   x.each do|a|
        #     y.each do |b|
        #       cells.push [a,b]
        #       end
        #     end



        #  puts cells
        #  cell_array = cells.to_s

        # puts cells
        #
        # puts "*********************"
        #
        # #puts cell_array.slice!([/{*/])
        # # puts cell_array.slice!(/{:/)
        #
        # puts cells.join(', ')
        # puts "*****************"
        # puts cells.inspect
        #
        #
        #
        #
        # puts "****************after"
        #
        # #puts cell_array

        #  puts cell_array.split("{}")

        #
        #  random_cells = cells.srand
        #
        #  shuffled_cells = cells.shuffle
        #
        #  puts random_cells
        #  puts shuffle_cells
