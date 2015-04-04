require 'pry'
require 'active_record'
require_relative 'db/connection'
require_relative './lib/cell'
require_relative './lib/ship'
require_relative './lib/ocean'
require_relative './lib/linebreak'
require_relative './lib/string_gets'
# require_relative 'pseudocode'
#
#
i = 0
while i ==0


puts"""
______   _______ __________________ _        _______  _______          _________ _______
(  ___ \ (  ___  )\__   __/\__   __/( \      (  ____ \(  ____ \|\     /|\__   __/(  ____ )
| (   ) )| (   ) |   ) (      ) (   | (      | (    \/| (    \/| )   ( |   ) (   | (    )|
| (__/ / | (___) |   | |      | |   | |      | (__    | (_____ | (___) |   | |   | (____)|
|  __ (  |  ___  |   | |      | |   | |      |  __)   (_____  )|  ___  |   | |   |  _____)
| (  \ \ | (   ) |   | |      | |   | |      | (            ) || (   ) |   | |   | (
| )___) )| )   ( |   | |      | |   | (____/\| (____/\/\____) || )   ( |___) (___| )
|/ \___/ |/     \|   )_(      )_(   (_______/(_______/\_______)|/     \|\_______/|/

"""


puts """ Would you like to play Battleship?

"""
input = gets().chomp
if input == "yes"

  puts """

  (  ____ \(  ___  )| \    /\(  ____ \    (  ___  )|\     /|\__   __/
| (    \/| (   ) ||  \  / /| (    \/    | (   ) || )   ( |   ) (
| (__    | (___) ||  (_/ / | (__        | |   | || |   | |   | |
|  __)   |  ___  ||   _ (  |  __)       | |   | || |   | |   | |
| (      | (   ) ||  ( \ \ | (          | |   | || |   | |   | |
| )      | )   ( ||  /  \ \| (____/\    | (___) || (___) |   | |
|/       |/     \||_/    \/(_______/    (_______)(_______)   )_(
                                                                   

  Sorry!!! Try Again Later.


  You can view the source to see what was attempted but as far as UI goes this is the best you get.
   Goodbye!!

   """

  i += 1

else
end

end



#
# def menu
#
#   linebreak
#   String_That_Gets.gets_string("""HELLO, WELCOME TO THE GAME OF GAMES!
#   WOULD YOU LIKE TO PLAY BATTLESHIP!!!
#   Please Respond Yes Or No
#   """)
#   linebreak
#
#   return
#
# end
#
# ship1 = Ship.new(name: "bison", sunk?:false, ship_size: 5)# binding.pry
# ship1.ship_location
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
