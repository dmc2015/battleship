class String_That_Gets_


  def gets_string(message)
    puts message
    string_input = gets().chomp.to_s#CHOMP 1

    if string_input != String
      puts "Sorry but that is not a valid input"
          String_That_Gets.gets_string(message)
    else
      return string_input
    end

  end


  def gets_integer(message)
    puts message
     integer_input= gets().chomp.to_i#CHOMP 2

     if integer_input != Integer
       puts "Sorry but that is not a valid input"
        String_That_Gets.gets_integer(message)
      else
        return integer_input
      end
  end

end


# good to knows
# - a.instance_of? String
# - kind_of? String
# - is_a? Integer
