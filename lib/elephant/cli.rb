puts "Cli loaded"
class Cli

  def run              #instantiate my cli class
    print_greet        # call and print out welcome to my users
    Api.get_elephants     #get a list from api
    main              #build a menu, loopin and getting user input.
  end

  def main   #expand my functionallity 
   print_all
   print_selection_prompt
   valid_index?(prompt_selection.to_i)
   print_continue
   proceed?(prompt_selection)
   print_goodbye
  end

  def print_greet
    puts "welcome to my elephant CLI!"
    puts "would you like to see a list of elephants?" 
    sleep (1.5) 
  end
  
  def print_goodbye
    puts 'GOODBYE!!!!!!'
  end
  
  def print_details(e) # puts elephant_object
     elephant = Elephant.all[e]
     system "clear"
     puts "NAME: #{elephant.name}"
     puts "DOB: #{elephant.dob}"
     puts "SEX: #{elephant.sex}"
     puts "SPECIES: #{elephant.species}"
     puts "NOTE: #{elephant.note}"
  end

  def print_all 
     Elephant.all.each.with_index(1) do |elephant, index| puts "#{index}.) #{elephant.name}"     #print a list of elephants # we are interprilating and print out my list i instaiated.
      
  end

  def print_continue
    puts "\n\nwould you like to continue? (y/n)"
  end
  
  def print_selection_prompt
    puts "please Select a elephant by index for more info!"
  end

  def valid_index?(e)
    max_limit = Elephant.all.size
    if  e.between?(0,max_limit)
      print_details(e)
    else
      print_error
      main
    end
  end

  def print_error
      puts "Sorry invalid selection, please try again"     
  end
      
  def prompt_selection
    selection = gets.chomp
  end

  def proceed?(choice)
    if choice == "y"
      main
     else
       print_goodbye
       exit
     end
    end
  end

end






  