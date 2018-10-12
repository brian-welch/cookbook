require 'csv'
# require 'recipes.csv'
# cookbook repo
class Cookbook
  # attr_accessor :recipes

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    CSV.foreach(csv_file_path) do |row|
      @recipes << row
    end
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes.push(recipe)
    # csv_options = { lfkajflsakj }
    # CSV.open(@csv_file_path, 'wb', csv_options)
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
  end
end
