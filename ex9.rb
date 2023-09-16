
class Menu
  attr_reader :options
  
  def initialize
    @options = []
    @q = false 
  end

  def show
    loop do
      system("clear") || system("cls") 
      puts "Menu Options:"
      @options.each_with_index do |option, index|
        puts "#{index + 1}. #{option[:text]}"
      end
      print "Enter Number to execute action (or 'q' to quit): "
      choice = gets.chomp

      break if choice.downcase == 'q'

      choice_num = choice.to_i
      if choice_num >= 1 && choice_num <= @options.length
        @options[choice_num - 1][:action].call
      else
        puts "Invalid choice. Please enter a valid option number or 'q' to quit."
      end

      puts "Press Enter to continue..."
      gets
    end
  end

  class Builder
    def initialize
      @menu = Menu.new
    
    end

    def add_menu_option(option_txt, menu_action_block)
      @menu.options << { text: option_txt, action: menu_action_block }
    end

    def build
      @menu
    end
  end
   
end



menu_builder = Menu::Builder.new
menu_builder.add_menu_option("Option 1", lambda {
  puts "Executing Option 1"
})
menu_builder.add_menu_option("Option 2", lambda {
  puts "Executing Option 2"
})
menu_builder.add_menu_option("Option 3", lambda {
  puts "Executing Option 3"
})

menu = menu_builder.build
menu.show