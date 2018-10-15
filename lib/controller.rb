require_relative 'cookbook'
require_relative 'cookbook_view'
# Controller
class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = CookbookView.new
  end

  def list
    @cookbook.all
  end

  def create
    name = ask_user_for_new_recipe_name
    description = ask_user_for_new_recipe_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    display_recipes
    index = recipe_to_delete
    @cookbook.remove_recipe(index)
  end
end
