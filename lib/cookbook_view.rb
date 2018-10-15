class CookbookView

  def pick_a_recipe
    puts "Which recipe would you like to use?"
    puts "Give a number, please."
    return gets.chomp.to_i - 1
  end

  def display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}"
    end
  end

  def ask_user_for_new_recipe_name
    puts "Please give the name of the recipe:"
    return gets.chomp
  end

  def ask_user_for_new_recipe_description
    puts "Please write the decrition of the recipe"
    return gets.chomp
  end

  def recipe_to_delete
    puts "Write the number of the recipe you would like to delete."
    return gets.chomp.to_index - 1
  end

  def list_of_actions
    puts "What do you want to do next?"
    puts "1 - List all recipes"
    puts "2 - Create a new recipe"
    puts "3 - Destroy a recipe"
    puts "4 - Stop and exit the program"
  end
end
