class Cli

  def run              #instantiate my cli class
    print_greet        # call and print out welcome to my users
    Api.get_elephants     #gets data from api and loads it into elephant class
    main              #build a menu, to  get user input.
  end

  def main   #expand my functionallity 
   print_all
   print_selection_prompt
   user_input
   validation
  end

  def print_greet
    puts "Welcome to my elephant CLI!"
    puts "Here is  a list of elephants." 
    sleep (1.5) 
  end
  
  def print_goodbye
    puts 'GOODBYE!!!!!!'
  end
  
  def new_array
     Elephant.all.reject {|elephant| elephant.name == nil}
  end

  def print_all 
    new_array.each.with_index(1) do |elephant, index| 
      puts "#{index}.) #{elephant.name}"     #print a list of elephants name# we are interpolating and print out list of elephants.
    end
  end

  def print_selection_prompt
    puts "please Select a number for more info!"
  end

  def print_continue
    puts "\n\nwould you like to continue? (y/n)"
  end
    
  def user_input
    index = gets.strip.to_i - 1
    max_limit = new_array.size - 1
    until index.between?(0,max_limit)
      print_error
      index = gets.strip.to_i - 1
    end
     elephant = new_array[index]
     puts "NAME:" + elephant.name
     puts "DOB:" + elephant.dob
     puts "SEX:" + elephant.sex
     puts "SPECIES:" + elephant.species 
     puts "NOTE:" + elephant.note
  end

   def validation
      print_continue
     input = gets.strip.downcase
     if input == "yes" || input == "y"
      print_all
      print_selection_prompt
      user_input
      validation
     else
      print_goodbye
      exit
     end
    end

  def print_error
      puts "Sorry invalid selection, please try again"  
  end
      
  def prompt_selection
    selection = gets.strip
  end

  # def proceed?(choice)
  #   if choice == "y" 
  #     main
  #     else
  #      print_goodbye
  #      exit
  #   end
  # end

end




  # def print_details 
    #  elephant = Elephant.all[e -1]
    #  system "clear"
    #  puts "NAME: #{elephant.name}"
    #  puts "DOB: #{elephant.dob}"
    #  puts "SEX: #{elephant.sex}"
    #  puts "SPECIES: #{elephant.species}"
    #  puts "NOTE: #{elephant.note}"
    #  binding.pry
  # end


  