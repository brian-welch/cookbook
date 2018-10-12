require 'csv'
require 'recipe'
require 'pry-byebug'
# require 'recipes.csv'
# cookbook repo
class Cookbook
  # attr_accessor :recipes

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    CSV.foreach(@csv_file_path) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def all
    @recipes
  end

  def add_recipe(new_recipe)
    @recipes << new_recipe
    csv_file
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    csv_file
  end

  private

  def csv_file
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
