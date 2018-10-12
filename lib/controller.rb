require_relative 'cookbook'
# Controller
class Controller
  def initialize(cookbook)
    @cookbook = cookbook
  end

  def list
    @cookbook.all
  end

  def create
    @cookbook.add_recipe
  end

  def destroy
    @cookbook.remove_recipe
  end
end
