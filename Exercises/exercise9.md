# Excercise 9

Create a `Menu` class and a `MenuBuilder` class that follows the [Builder Patter](https://refactoring.guru/design-patterns/builder/ruby/example).

## Requirements
- The `MenuBuilder` class should include `add_menu_option(option_txt, menu_action_block)` that serves to add new options and actions to the menu.
- The `MenuBuilder` class should have a `build` method that retrievs the new created Menu with the options specifications
- The `Menu` class should display the menu options and an input prompt so the terminal user is able to indicate the selected option.

## Example

```Ruby
menu_builder = MenuBuilder.new
menu_builder.add_menu_option "Option 1" do 
  puts "Executing option 1"
end
menu_builder.add_menu_option "Option 2" do 
  puts "Executing option 2"
end
menu_builder.add_menu_option "Option 2" do 
  puts "Executing option 2"
end

menu = menu_builder.build
menu.show
```
### Output
```
1. Option 1
2. Option 2
3. Option 3
Enter Number to execute action: 
```
