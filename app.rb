require 'pry'
require 'active_record'
require_relative 'db/connection'
require_relative './lib/cell'
require_relative './lib/ship'
require_relative './lib/ocean'
require_relative './lib/linebreak'
require_relative './lib/string_gets'
# require_relative 'pseudocode'



def menu

  linebreak
  String_That_Gets.gets_string("""HELLO, WELCOME TO THE GAME OF GAMES!
  WOULD YOU LIKE TO PLAY BATTLESHIP!!!
  Please Respond Yes Or No
  """)
  linebreak

  return

end

ship1 = Ship.new(name: "bison", sunk?:false, ship_size: 5)# binding.pry
ship1.ship_location
# def menu
#
#
#
# end

#
# Matrix [[]]
#
#
#
#
#
